=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 1.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

# Common files
require 'ruby-esi/api_client'
require 'ruby-esi/api_error'
require 'ruby-esi/version'
require 'ruby-esi/configuration'

# Models
require 'ruby-esi/models/bad_request'
require 'ruby-esi/models/delete_characters_character_id_mail_labels_label_id_unprocessable_entity'
require 'ruby-esi/models/delete_fleets_fleet_id_members_member_id_not_found'
require 'ruby-esi/models/delete_fleets_fleet_id_squads_squad_id_not_found'
require 'ruby-esi/models/delete_fleets_fleet_id_wings_wing_id_not_found'
require 'ruby-esi/models/error_limited'
require 'ruby-esi/models/forbidden'
require 'ruby-esi/models/gateway_timeout'
require 'ruby-esi/models/get_alliances_alliance_id_contacts_200_ok'
require 'ruby-esi/models/get_alliances_alliance_id_contacts_labels_200_ok'
require 'ruby-esi/models/get_alliances_alliance_id_icons_not_found'
require 'ruby-esi/models/get_alliances_alliance_id_icons_ok'
require 'ruby-esi/models/get_alliances_alliance_id_not_found'
require 'ruby-esi/models/get_alliances_alliance_id_ok'
require 'ruby-esi/models/get_characters_character_id_agents_research_200_ok'
require 'ruby-esi/models/get_characters_character_id_assets_200_ok'
require 'ruby-esi/models/get_characters_character_id_assets_not_found'
require 'ruby-esi/models/get_characters_character_id_attributes_ok'
require 'ruby-esi/models/get_characters_character_id_blueprints_200_ok'
require 'ruby-esi/models/get_characters_character_id_bookmarks_200_ok'
require 'ruby-esi/models/get_characters_character_id_bookmarks_coordinates'
require 'ruby-esi/models/get_characters_character_id_bookmarks_folders_200_ok'
require 'ruby-esi/models/get_characters_character_id_bookmarks_item'
require 'ruby-esi/models/get_characters_character_id_calendar_200_ok'
require 'ruby-esi/models/get_characters_character_id_calendar_event_id_attendees_200_ok'
require 'ruby-esi/models/get_characters_character_id_calendar_event_id_attendees_not_found'
require 'ruby-esi/models/get_characters_character_id_calendar_event_id_not_found'
require 'ruby-esi/models/get_characters_character_id_calendar_event_id_ok'
require 'ruby-esi/models/get_characters_character_id_clones_home_location'
require 'ruby-esi/models/get_characters_character_id_clones_jump_clone'
require 'ruby-esi/models/get_characters_character_id_clones_ok'
require 'ruby-esi/models/get_characters_character_id_contacts_200_ok'
require 'ruby-esi/models/get_characters_character_id_contacts_labels_200_ok'
require 'ruby-esi/models/get_characters_character_id_contracts_200_ok'
require 'ruby-esi/models/get_characters_character_id_contracts_contract_id_bids_200_ok'
require 'ruby-esi/models/get_characters_character_id_contracts_contract_id_bids_not_found'
require 'ruby-esi/models/get_characters_character_id_contracts_contract_id_items_200_ok'
require 'ruby-esi/models/get_characters_character_id_contracts_contract_id_items_not_found'
require 'ruby-esi/models/get_characters_character_id_corporationhistory_200_ok'
require 'ruby-esi/models/get_characters_character_id_fatigue_ok'
require 'ruby-esi/models/get_characters_character_id_fittings_200_ok'
require 'ruby-esi/models/get_characters_character_id_fittings_item'
require 'ruby-esi/models/get_characters_character_id_fleet_not_found'
require 'ruby-esi/models/get_characters_character_id_fleet_ok'
require 'ruby-esi/models/get_characters_character_id_fw_stats_kills'
require 'ruby-esi/models/get_characters_character_id_fw_stats_ok'
require 'ruby-esi/models/get_characters_character_id_fw_stats_victory_points'
require 'ruby-esi/models/get_characters_character_id_industry_jobs_200_ok'
require 'ruby-esi/models/get_characters_character_id_killmails_recent_200_ok'
require 'ruby-esi/models/get_characters_character_id_location_ok'
require 'ruby-esi/models/get_characters_character_id_loyalty_points_200_ok'
require 'ruby-esi/models/get_characters_character_id_mail_200_ok'
require 'ruby-esi/models/get_characters_character_id_mail_labels_label'
require 'ruby-esi/models/get_characters_character_id_mail_labels_ok'
require 'ruby-esi/models/get_characters_character_id_mail_lists_200_ok'
require 'ruby-esi/models/get_characters_character_id_mail_mail_id_not_found'
require 'ruby-esi/models/get_characters_character_id_mail_mail_id_ok'
require 'ruby-esi/models/get_characters_character_id_mail_mail_id_recipient'
require 'ruby-esi/models/get_characters_character_id_mail_recipient'
require 'ruby-esi/models/get_characters_character_id_medals_200_ok'
require 'ruby-esi/models/get_characters_character_id_medals_graphic'
require 'ruby-esi/models/get_characters_character_id_mining_200_ok'
require 'ruby-esi/models/get_characters_character_id_not_found'
require 'ruby-esi/models/get_characters_character_id_notifications_200_ok'
require 'ruby-esi/models/get_characters_character_id_notifications_contacts_200_ok'
require 'ruby-esi/models/get_characters_character_id_ok'
require 'ruby-esi/models/get_characters_character_id_online_ok'
require 'ruby-esi/models/get_characters_character_id_opportunities_200_ok'
require 'ruby-esi/models/get_characters_character_id_orders_200_ok'
require 'ruby-esi/models/get_characters_character_id_orders_history_200_ok'
require 'ruby-esi/models/get_characters_character_id_planets_200_ok'
require 'ruby-esi/models/get_characters_character_id_planets_planet_id_content'
require 'ruby-esi/models/get_characters_character_id_planets_planet_id_extractor_details'
require 'ruby-esi/models/get_characters_character_id_planets_planet_id_factory_details'
require 'ruby-esi/models/get_characters_character_id_planets_planet_id_head'
require 'ruby-esi/models/get_characters_character_id_planets_planet_id_link'
require 'ruby-esi/models/get_characters_character_id_planets_planet_id_not_found'
require 'ruby-esi/models/get_characters_character_id_planets_planet_id_ok'
require 'ruby-esi/models/get_characters_character_id_planets_planet_id_pin'
require 'ruby-esi/models/get_characters_character_id_planets_planet_id_route'
require 'ruby-esi/models/get_characters_character_id_portrait_not_found'
require 'ruby-esi/models/get_characters_character_id_portrait_ok'
require 'ruby-esi/models/get_characters_character_id_roles_ok'
require 'ruby-esi/models/get_characters_character_id_search_ok'
require 'ruby-esi/models/get_characters_character_id_ship_ok'
require 'ruby-esi/models/get_characters_character_id_skillqueue_200_ok'
require 'ruby-esi/models/get_characters_character_id_skills_ok'
require 'ruby-esi/models/get_characters_character_id_skills_skill'
require 'ruby-esi/models/get_characters_character_id_standings_200_ok'
require 'ruby-esi/models/get_characters_character_id_titles_200_ok'
require 'ruby-esi/models/get_characters_character_id_wallet_journal_200_ok'
require 'ruby-esi/models/get_characters_character_id_wallet_transactions_200_ok'
require 'ruby-esi/models/get_contracts_public_bids_contract_id_200_ok'
require 'ruby-esi/models/get_contracts_public_bids_contract_id_forbidden'
require 'ruby-esi/models/get_contracts_public_bids_contract_id_not_found'
require 'ruby-esi/models/get_contracts_public_items_contract_id_200_ok'
require 'ruby-esi/models/get_contracts_public_items_contract_id_forbidden'
require 'ruby-esi/models/get_contracts_public_items_contract_id_not_found'
require 'ruby-esi/models/get_contracts_public_region_id_200_ok'
require 'ruby-esi/models/get_contracts_public_region_id_not_found'
require 'ruby-esi/models/get_corporation_corporation_id_mining_extractions_200_ok'
require 'ruby-esi/models/get_corporation_corporation_id_mining_observers_200_ok'
require 'ruby-esi/models/get_corporation_corporation_id_mining_observers_observer_id_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_alliancehistory_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_assets_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_blueprints_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_bookmarks_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_bookmarks_coordinates'
require 'ruby-esi/models/get_corporations_corporation_id_bookmarks_folders_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_bookmarks_item'
require 'ruby-esi/models/get_corporations_corporation_id_contacts_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_contacts_labels_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_containers_logs_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_contracts_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_contracts_contract_id_bids_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_contracts_contract_id_bids_not_found'
require 'ruby-esi/models/get_corporations_corporation_id_contracts_contract_id_items_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_contracts_contract_id_items_error_520'
require 'ruby-esi/models/get_corporations_corporation_id_contracts_contract_id_items_not_found'
require 'ruby-esi/models/get_corporations_corporation_id_customs_offices_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_divisions_hangar_hangar'
require 'ruby-esi/models/get_corporations_corporation_id_divisions_ok'
require 'ruby-esi/models/get_corporations_corporation_id_divisions_wallet_wallet'
require 'ruby-esi/models/get_corporations_corporation_id_facilities_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_fw_stats_kills'
require 'ruby-esi/models/get_corporations_corporation_id_fw_stats_ok'
require 'ruby-esi/models/get_corporations_corporation_id_fw_stats_victory_points'
require 'ruby-esi/models/get_corporations_corporation_id_icons_not_found'
require 'ruby-esi/models/get_corporations_corporation_id_icons_ok'
require 'ruby-esi/models/get_corporations_corporation_id_industry_jobs_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_killmails_recent_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_medals_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_medals_issued_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_members_titles_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_membertracking_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_not_found'
require 'ruby-esi/models/get_corporations_corporation_id_ok'
require 'ruby-esi/models/get_corporations_corporation_id_orders_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_orders_history_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_roles_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_roles_history_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_shareholders_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_standings_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_starbases_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_starbases_starbase_id_fuel'
require 'ruby-esi/models/get_corporations_corporation_id_starbases_starbase_id_ok'
require 'ruby-esi/models/get_corporations_corporation_id_structures_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_structures_service'
require 'ruby-esi/models/get_corporations_corporation_id_titles_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_wallets_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_wallets_division_journal_200_ok'
require 'ruby-esi/models/get_corporations_corporation_id_wallets_division_transactions_200_ok'
require 'ruby-esi/models/get_dogma_attributes_attribute_id_not_found'
require 'ruby-esi/models/get_dogma_attributes_attribute_id_ok'
require 'ruby-esi/models/get_dogma_dynamic_items_type_id_item_id_dogma_attribute'
require 'ruby-esi/models/get_dogma_dynamic_items_type_id_item_id_dogma_effect'
require 'ruby-esi/models/get_dogma_dynamic_items_type_id_item_id_not_found'
require 'ruby-esi/models/get_dogma_dynamic_items_type_id_item_id_ok'
require 'ruby-esi/models/get_dogma_effects_effect_id_modifier'
require 'ruby-esi/models/get_dogma_effects_effect_id_not_found'
require 'ruby-esi/models/get_dogma_effects_effect_id_ok'
require 'ruby-esi/models/get_fleets_fleet_id_members_200_ok'
require 'ruby-esi/models/get_fleets_fleet_id_members_not_found'
require 'ruby-esi/models/get_fleets_fleet_id_not_found'
require 'ruby-esi/models/get_fleets_fleet_id_ok'
require 'ruby-esi/models/get_fleets_fleet_id_wings_200_ok'
require 'ruby-esi/models/get_fleets_fleet_id_wings_not_found'
require 'ruby-esi/models/get_fleets_fleet_id_wings_squad'
require 'ruby-esi/models/get_fw_leaderboards_active_total_active_total'
require 'ruby-esi/models/get_fw_leaderboards_active_total_active_total_1'
require 'ruby-esi/models/get_fw_leaderboards_characters_active_total_active_total'
require 'ruby-esi/models/get_fw_leaderboards_characters_active_total_active_total_1'
require 'ruby-esi/models/get_fw_leaderboards_characters_kills'
require 'ruby-esi/models/get_fw_leaderboards_characters_last_week_last_week'
require 'ruby-esi/models/get_fw_leaderboards_characters_last_week_last_week_1'
require 'ruby-esi/models/get_fw_leaderboards_characters_ok'
require 'ruby-esi/models/get_fw_leaderboards_characters_victory_points'
require 'ruby-esi/models/get_fw_leaderboards_characters_yesterday_yesterday'
require 'ruby-esi/models/get_fw_leaderboards_characters_yesterday_yesterday_1'
require 'ruby-esi/models/get_fw_leaderboards_corporations_active_total_active_total'
require 'ruby-esi/models/get_fw_leaderboards_corporations_active_total_active_total_1'
require 'ruby-esi/models/get_fw_leaderboards_corporations_kills'
require 'ruby-esi/models/get_fw_leaderboards_corporations_last_week_last_week'
require 'ruby-esi/models/get_fw_leaderboards_corporations_last_week_last_week_1'
require 'ruby-esi/models/get_fw_leaderboards_corporations_ok'
require 'ruby-esi/models/get_fw_leaderboards_corporations_victory_points'
require 'ruby-esi/models/get_fw_leaderboards_corporations_yesterday_yesterday'
require 'ruby-esi/models/get_fw_leaderboards_corporations_yesterday_yesterday_1'
require 'ruby-esi/models/get_fw_leaderboards_kills'
require 'ruby-esi/models/get_fw_leaderboards_last_week_last_week'
require 'ruby-esi/models/get_fw_leaderboards_last_week_last_week_1'
require 'ruby-esi/models/get_fw_leaderboards_ok'
require 'ruby-esi/models/get_fw_leaderboards_victory_points'
require 'ruby-esi/models/get_fw_leaderboards_yesterday_yesterday'
require 'ruby-esi/models/get_fw_leaderboards_yesterday_yesterday_1'
require 'ruby-esi/models/get_fw_stats_200_ok'
require 'ruby-esi/models/get_fw_stats_kills'
require 'ruby-esi/models/get_fw_stats_victory_points'
require 'ruby-esi/models/get_fw_systems_200_ok'
require 'ruby-esi/models/get_fw_wars_200_ok'
require 'ruby-esi/models/get_incursions_200_ok'
require 'ruby-esi/models/get_industry_facilities_200_ok'
require 'ruby-esi/models/get_industry_systems_200_ok'
require 'ruby-esi/models/get_industry_systems_cost_indice'
require 'ruby-esi/models/get_insurance_prices_200_ok'
require 'ruby-esi/models/get_insurance_prices_level'
require 'ruby-esi/models/get_killmails_killmail_id_killmail_hash_attacker'
require 'ruby-esi/models/get_killmails_killmail_id_killmail_hash_item'
require 'ruby-esi/models/get_killmails_killmail_id_killmail_hash_items_item'
require 'ruby-esi/models/get_killmails_killmail_id_killmail_hash_ok'
require 'ruby-esi/models/get_killmails_killmail_id_killmail_hash_position'
require 'ruby-esi/models/get_killmails_killmail_id_killmail_hash_unprocessable_entity'
require 'ruby-esi/models/get_killmails_killmail_id_killmail_hash_victim'
require 'ruby-esi/models/get_loyalty_stores_corporation_id_offers_200_ok'
require 'ruby-esi/models/get_loyalty_stores_corporation_id_offers_not_found'
require 'ruby-esi/models/get_loyalty_stores_corporation_id_offers_required_item'
require 'ruby-esi/models/get_markets_groups_market_group_id_not_found'
require 'ruby-esi/models/get_markets_groups_market_group_id_ok'
require 'ruby-esi/models/get_markets_prices_200_ok'
require 'ruby-esi/models/get_markets_region_id_history_200_ok'
require 'ruby-esi/models/get_markets_region_id_history_error_520'
require 'ruby-esi/models/get_markets_region_id_history_not_found'
require 'ruby-esi/models/get_markets_region_id_history_unprocessable_entity'
require 'ruby-esi/models/get_markets_region_id_orders_200_ok'
require 'ruby-esi/models/get_markets_region_id_orders_not_found'
require 'ruby-esi/models/get_markets_region_id_orders_unprocessable_entity'
require 'ruby-esi/models/get_markets_structures_structure_id_200_ok'
require 'ruby-esi/models/get_opportunities_groups_group_id_ok'
require 'ruby-esi/models/get_opportunities_tasks_task_id_ok'
require 'ruby-esi/models/get_route_origin_destination_not_found'
require 'ruby-esi/models/get_sovereignty_campaigns_200_ok'
require 'ruby-esi/models/get_sovereignty_campaigns_participant'
require 'ruby-esi/models/get_sovereignty_map_200_ok'
require 'ruby-esi/models/get_sovereignty_structures_200_ok'
require 'ruby-esi/models/get_status_ok'
require 'ruby-esi/models/get_universe_ancestries_200_ok'
require 'ruby-esi/models/get_universe_asteroid_belts_asteroid_belt_id_not_found'
require 'ruby-esi/models/get_universe_asteroid_belts_asteroid_belt_id_ok'
require 'ruby-esi/models/get_universe_asteroid_belts_asteroid_belt_id_position'
require 'ruby-esi/models/get_universe_bloodlines_200_ok'
require 'ruby-esi/models/get_universe_categories_category_id_not_found'
require 'ruby-esi/models/get_universe_categories_category_id_ok'
require 'ruby-esi/models/get_universe_constellations_constellation_id_not_found'
require 'ruby-esi/models/get_universe_constellations_constellation_id_ok'
require 'ruby-esi/models/get_universe_constellations_constellation_id_position'
require 'ruby-esi/models/get_universe_factions_200_ok'
require 'ruby-esi/models/get_universe_graphics_graphic_id_not_found'
require 'ruby-esi/models/get_universe_graphics_graphic_id_ok'
require 'ruby-esi/models/get_universe_groups_group_id_not_found'
require 'ruby-esi/models/get_universe_groups_group_id_ok'
require 'ruby-esi/models/get_universe_moons_moon_id_not_found'
require 'ruby-esi/models/get_universe_moons_moon_id_ok'
require 'ruby-esi/models/get_universe_moons_moon_id_position'
require 'ruby-esi/models/get_universe_planets_planet_id_not_found'
require 'ruby-esi/models/get_universe_planets_planet_id_ok'
require 'ruby-esi/models/get_universe_planets_planet_id_position'
require 'ruby-esi/models/get_universe_races_200_ok'
require 'ruby-esi/models/get_universe_regions_region_id_not_found'
require 'ruby-esi/models/get_universe_regions_region_id_ok'
require 'ruby-esi/models/get_universe_schematics_schematic_id_not_found'
require 'ruby-esi/models/get_universe_schematics_schematic_id_ok'
require 'ruby-esi/models/get_universe_stargates_stargate_id_destination'
require 'ruby-esi/models/get_universe_stargates_stargate_id_not_found'
require 'ruby-esi/models/get_universe_stargates_stargate_id_ok'
require 'ruby-esi/models/get_universe_stargates_stargate_id_position'
require 'ruby-esi/models/get_universe_stars_star_id_ok'
require 'ruby-esi/models/get_universe_stations_station_id_not_found'
require 'ruby-esi/models/get_universe_stations_station_id_ok'
require 'ruby-esi/models/get_universe_stations_station_id_position'
require 'ruby-esi/models/get_universe_structures_structure_id_not_found'
require 'ruby-esi/models/get_universe_structures_structure_id_ok'
require 'ruby-esi/models/get_universe_structures_structure_id_position'
require 'ruby-esi/models/get_universe_system_jumps_200_ok'
require 'ruby-esi/models/get_universe_system_kills_200_ok'
require 'ruby-esi/models/get_universe_systems_system_id_not_found'
require 'ruby-esi/models/get_universe_systems_system_id_ok'
require 'ruby-esi/models/get_universe_systems_system_id_planet'
require 'ruby-esi/models/get_universe_systems_system_id_position'
require 'ruby-esi/models/get_universe_types_type_id_dogma_attribute'
require 'ruby-esi/models/get_universe_types_type_id_dogma_effect'
require 'ruby-esi/models/get_universe_types_type_id_not_found'
require 'ruby-esi/models/get_universe_types_type_id_ok'
require 'ruby-esi/models/get_wars_war_id_aggressor'
require 'ruby-esi/models/get_wars_war_id_ally'
require 'ruby-esi/models/get_wars_war_id_defender'
require 'ruby-esi/models/get_wars_war_id_killmails_200_ok'
require 'ruby-esi/models/get_wars_war_id_killmails_unprocessable_entity'
require 'ruby-esi/models/get_wars_war_id_ok'
require 'ruby-esi/models/get_wars_war_id_unprocessable_entity'
require 'ruby-esi/models/internal_server_error'
require 'ruby-esi/models/post_characters_affiliation_200_ok'
require 'ruby-esi/models/post_characters_character_id_assets_locations_200_ok'
require 'ruby-esi/models/post_characters_character_id_assets_locations_position'
require 'ruby-esi/models/post_characters_character_id_assets_names_200_ok'
require 'ruby-esi/models/post_characters_character_id_contacts_error_520'
require 'ruby-esi/models/post_characters_character_id_fittings_created'
require 'ruby-esi/models/post_characters_character_id_fittings_fitting'
require 'ruby-esi/models/post_characters_character_id_fittings_item'
require 'ruby-esi/models/post_characters_character_id_mail_error_520'
require 'ruby-esi/models/post_characters_character_id_mail_labels_label'
require 'ruby-esi/models/post_characters_character_id_mail_mail'
require 'ruby-esi/models/post_characters_character_id_mail_recipient'
require 'ruby-esi/models/post_corporations_corporation_id_assets_locations_200_ok'
require 'ruby-esi/models/post_corporations_corporation_id_assets_locations_not_found'
require 'ruby-esi/models/post_corporations_corporation_id_assets_locations_position'
require 'ruby-esi/models/post_corporations_corporation_id_assets_names_200_ok'
require 'ruby-esi/models/post_corporations_corporation_id_assets_names_not_found'
require 'ruby-esi/models/post_fleets_fleet_id_members_invitation'
require 'ruby-esi/models/post_fleets_fleet_id_members_not_found'
require 'ruby-esi/models/post_fleets_fleet_id_members_unprocessable_entity'
require 'ruby-esi/models/post_fleets_fleet_id_wings_created'
require 'ruby-esi/models/post_fleets_fleet_id_wings_not_found'
require 'ruby-esi/models/post_fleets_fleet_id_wings_wing_id_squads_created'
require 'ruby-esi/models/post_fleets_fleet_id_wings_wing_id_squads_not_found'
require 'ruby-esi/models/post_ui_openwindow_newmail_new_mail'
require 'ruby-esi/models/post_ui_openwindow_newmail_unprocessable_entity'
require 'ruby-esi/models/post_universe_ids_agent'
require 'ruby-esi/models/post_universe_ids_alliance'
require 'ruby-esi/models/post_universe_ids_character'
require 'ruby-esi/models/post_universe_ids_constellation'
require 'ruby-esi/models/post_universe_ids_corporation'
require 'ruby-esi/models/post_universe_ids_faction'
require 'ruby-esi/models/post_universe_ids_inventory_type'
require 'ruby-esi/models/post_universe_ids_ok'
require 'ruby-esi/models/post_universe_ids_region'
require 'ruby-esi/models/post_universe_ids_station'
require 'ruby-esi/models/post_universe_ids_system'
require 'ruby-esi/models/post_universe_names_200_ok'
require 'ruby-esi/models/post_universe_names_not_found'
require 'ruby-esi/models/put_characters_character_id_calendar_event_id_response'
require 'ruby-esi/models/put_characters_character_id_mail_mail_id_contents'
require 'ruby-esi/models/put_fleets_fleet_id_members_member_id_movement'
require 'ruby-esi/models/put_fleets_fleet_id_members_member_id_not_found'
require 'ruby-esi/models/put_fleets_fleet_id_members_member_id_unprocessable_entity'
require 'ruby-esi/models/put_fleets_fleet_id_new_settings'
require 'ruby-esi/models/put_fleets_fleet_id_not_found'
require 'ruby-esi/models/put_fleets_fleet_id_squads_squad_id_naming'
require 'ruby-esi/models/put_fleets_fleet_id_squads_squad_id_not_found'
require 'ruby-esi/models/put_fleets_fleet_id_wings_wing_id_naming'
require 'ruby-esi/models/put_fleets_fleet_id_wings_wing_id_not_found'
require 'ruby-esi/models/service_unavailable'
require 'ruby-esi/models/unauthorized'

# APIs
require 'ruby-esi/api/alliance_api'
require 'ruby-esi/api/assets_api'
require 'ruby-esi/api/bookmarks_api'
require 'ruby-esi/api/calendar_api'
require 'ruby-esi/api/character_api'
require 'ruby-esi/api/clones_api'
require 'ruby-esi/api/contacts_api'
require 'ruby-esi/api/contracts_api'
require 'ruby-esi/api/corporation_api'
require 'ruby-esi/api/dogma_api'
require 'ruby-esi/api/faction_warfare_api'
require 'ruby-esi/api/fittings_api'
require 'ruby-esi/api/fleets_api'
require 'ruby-esi/api/incursions_api'
require 'ruby-esi/api/industry_api'
require 'ruby-esi/api/insurance_api'
require 'ruby-esi/api/killmails_api'
require 'ruby-esi/api/location_api'
require 'ruby-esi/api/loyalty_api'
require 'ruby-esi/api/mail_api'
require 'ruby-esi/api/market_api'
require 'ruby-esi/api/opportunities_api'
require 'ruby-esi/api/planetary_interaction_api'
require 'ruby-esi/api/routes_api'
require 'ruby-esi/api/search_api'
require 'ruby-esi/api/skills_api'
require 'ruby-esi/api/sovereignty_api'
require 'ruby-esi/api/status_api'
require 'ruby-esi/api/universe_api'
require 'ruby-esi/api/user_interface_api'
require 'ruby-esi/api/wallet_api'
require 'ruby-esi/api/wars_api'

module ESI
  class << self
    # Customize default settings for the SDK using block.
    #   ESI.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
