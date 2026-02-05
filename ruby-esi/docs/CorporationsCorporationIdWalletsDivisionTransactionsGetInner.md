# ESI::CorporationsCorporationIdWalletsDivisionTransactionsGetInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **Integer** |  |  |
| **date** | **Time** | Date and time of transaction |  |
| **is_buy** | **Boolean** |  |  |
| **journal_ref_id** | **Integer** | -1 if there is no corresponding wallet journal entry |  |
| **location_id** | **Integer** |  |  |
| **quantity** | **Integer** |  |  |
| **transaction_id** | **Integer** | Unique transaction ID |  |
| **type_id** | **Integer** |  |  |
| **unit_price** | **Float** | Amount paid per unit |  |

## Example

```ruby
require 'ruby-esi'

instance = ESI::CorporationsCorporationIdWalletsDivisionTransactionsGetInner.new(
  client_id: null,
  date: null,
  is_buy: null,
  journal_ref_id: null,
  location_id: null,
  quantity: null,
  transaction_id: null,
  type_id: null,
  unit_price: null
)
```

