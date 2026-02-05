# Ruby ESI

Automated Ruby client library for the [EVE Online ESI (EVE Swagger Interface) API](https://esi.evetech.net/), generated from the official OpenAPI specification.

## What This Repository Does

This repository automatically:

1. **Checks daily** for updates to the ESI API specification using ESI's compatibility date system
2. **Generates** a complete Ruby client library when the API version changes
3. **Publishes** to [RubyGems](https://rubygems.org/gems/ruby-esi) via GitHub Actions trusted publishing
4. **Creates** GitHub releases with the generated gem

## Versioning

Gem versions follow the format: `<api-version>.<compatibility-date>`

Example: **`1.36.2025.12.16`**
- `1.36` - ESI API version from the OpenAPI spec
- `2025.12.16` - ESI compatibility date (when the API schema last changed)

### ESI Compatibility Dates

EVE Online's ESI uses a [compatibility date system](https://developers.eveonline.com/blog/changing-versions-v42-was-getting-out-of-hand) instead of traditional versioning:

- Applications specify a compatibility date to ESI via the `X-Compatibility-Date` header or `compatibility_date` query parameter
- ESI maintains backward compatibility for at least one year
- The workflow tracks the **latest** compatibility date and only rebuilds when it changes

**Current Available Versions:**
- `2020-01-01` - Legacy version (182 endpoints, 623KB spec)
- `2025-12-16` - Current version (193 endpoints, 708KB spec)

## Installation

```bash
gem install ruby-esi
```

Or add to your Gemfile:

```ruby
gem 'ruby-esi'
```

## Usage

```ruby
require 'ruby-esi'

# Configure the client
ESI.configure do |config|
  # Optional: Set compatibility date (defaults to latest)
  config.server_variables[:compatibility_date] = '2025-12-16'
end

# Use the API
client = ESI::AllianceApi.new
alliances = client.get_alliances
```

See the [generated documentation](https://rubygems.org/gems/ruby-esi) or [ESI docs](https://docs.esi.evetech.net/) for available endpoints.

## Workflow

The GitHub Actions workflow (`.github/workflows/publish.yml`) runs:

- **Daily at 00:00 UTC** - Automatic check for version updates
- **Manually** - Via workflow dispatch with optional force build

### Build Process

1. **Version Check**
   - Queries `https://esi.evetech.net/meta/openapi.yaml` with today's date
   - Extracts the `x-compatibility-date` header
   - Compares to the last built version (git tag)

2. **Generation** (only if version changed)
   - Downloads OpenAPI spec for the detected compatibility date
   - Generates Ruby client with OpenAPI Generator 7.19.0+
   - Builds gem with version `<api-version>.<compatibility-date>`

3. **Publishing**
   - Commits generated code to repository
   - Creates git tag (e.g., `v1.36.2025.12.16`)
   - Publishes to RubyGems via [trusted publishing](https://guides.rubygems.org/trusted-publishing/) (OIDC)
   - Creates GitHub release with gem artifact

## Breaking Changes from v0.6.0

⚠️ **Version 1.36.2025.12.16 introduces breaking changes due to OpenAPI Generator updates**

### Major Changes

1. **Model Naming Convention Changed**
   - **Old (v0.6.0)**: `GetAlliancesAllianceIdContacts200Ok`
   - **New (v1.36.x)**: `AlliancesAllianceIdContactsGetInner`
   
   Model file names now follow REST path structure instead of HTTP status-based naming.

2. **New API Classes Added**
   - `ESI::CorporationProjectsApi` - Corporation project management
   - `ESI::FreelanceJobsApi` - Freelance job system
   - `ESI::MetaApi` - ESI metadata endpoints

3. **API Updates**
   - 11 new endpoints added (182 → 193)
   - 8 new model classes
   - Updated to OpenAPI 3.1 spec

4. **Generator Version**
   - Updated from OpenAPI Generator 7.13.0 → 7.19.0
   - Includes bug fixes and improved code generation

### Migration Guide

If upgrading from v0.6.0:

1. **Update model references**: Search your codebase for old model names and update to new naming convention
2. **Check API method signatures**: Some methods may have parameter changes
3. **Test thoroughly**: The new generator may produce slightly different code structure

Example migration:
```ruby
# Old (v0.6.0)
response = ESI::GetAlliancesAllianceIdContacts200Ok.new

# New (v1.36.x)
response = ESI::AlliancesAllianceIdContactsGetInner.new
```

## Configuration

### Trusted Publishing Setup

This repository uses [RubyGems Trusted Publishing](https://guides.rubygems.org/trusted-publishing/) for secure, keyless gem publishing:

1. Repository: `aladac/ruby-esi`
2. Workflow: `publish.yml`
3. Environment: Production (optional)

No API keys are stored - authentication uses GitHub OIDC tokens.

## Development

### Local Testing

Test the generation process locally:

```bash
# Download spec with compatibility date
TODAY=$(date +%Y-%m-%d)
COMPAT_DATE=$(curl -sI "https://esi.evetech.net/meta/openapi.yaml?compatibility_date=$TODAY" \
  | grep -i "x-compatibility-date:" | awk '{print $2}' | tr -d '\r')

curl -s "https://esi.evetech.net/meta/openapi.yaml?compatibility_date=$COMPAT_DATE" \
  -o openapi.yaml

# Generate client
API_VERSION=$(curl -s https://esi.evetech.net/latest/swagger.json | jq -r '.info.version')
DATE_PARTS=$(echo $COMPAT_DATE | tr '-' '.')
ESI_VERSION="${API_VERSION}.${DATE_PARTS}"

openapi-generator generate \
  -i openapi.yaml \
  -g ruby \
  -o ./ruby-esi \
  --additional-properties=gemName=ruby-esi,moduleName=ESI,gemVersion=$ESI_VERSION

# Build gem
cd ruby-esi
gem build ruby-esi.gemspec
```

### Manual Workflow Trigger

To manually trigger a build:

1. Go to **Actions** → **Build and Publish Ruby ESI Gem**
2. Click **Run workflow**
3. Optionally check **Force build** to build even if version unchanged

## Resources

- [ESI Documentation](https://docs.esi.evetech.net/)
- [ESI API Explorer](https://developers.eveonline.com/api-explorer)
- [ESI Compatibility Date System](https://developers.eveonline.com/blog/changing-versions-v42-was-getting-out-of-hand)
- [OpenAPI Generator](https://openapi-generator.tech/)
- [RubyGems Trusted Publishing](https://guides.rubygems.org/trusted-publishing/)

## License

This gem is generated from the EVE Online ESI API, which is provided by CCP Games. The generated client follows the [EVE Developer License](https://developers.eveonline.com/resource/license-agreement).

## Support

For issues with the gem generation or automation:
- **Repository Issues**: [GitHub Issues](https://github.com/aladac/ruby-esi/issues)

For issues with the ESI API itself:
- **ESI Support**: [EVE Developers](https://developers.eveonline.com/docs/support/)
- **EVE Forums**: [Third Party Development Forum](https://forums.eveonline.com/c/technology-research/third-party-development/62)
