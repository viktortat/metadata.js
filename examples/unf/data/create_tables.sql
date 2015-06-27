USE md;
CREATE TABLE IF NOT EXISTS refs (ref CHAR);
CREATE TABLE IF NOT EXISTS cacc_managerial (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, account_type CHAR, distribution_method CHAR, account_for_closing CHAR, income_expenses_analysis CHAR, parent CHAR);
CREATE TABLE IF NOT EXISTS cch_properties (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, caption CHAR, destination CHAR, mandatory BOOLEAN, note CHAR, tooltip CHAR, type JSON);
CREATE TABLE IF NOT EXISTS cch_income_expenses_analysis (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN);
CREATE TABLE IF NOT EXISTS enm_individual_legal (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_structural_unit_types (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_specification_row_types (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_event_types (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_nom_types (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_vat_types (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_contact_information_types (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_cash_flow_types (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_estimated_payments_states (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_invoice_conditions (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_gender (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_google_access_areas (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_week_days (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_debit_credit (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_yes_no (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_inbound_outbound (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_motor_vehicle_kinds (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_transactions_kinds_stock_transfer (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_transactions_kinds_purchase_order (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_transactions_kinds_buyers_order (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS enm_contract_kinds (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS doc_event (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, posted BOOLEAN, date Date, number_doc CHAR, `content` CHAR, responsible CHAR, author CHAR, project CHAR, inbound_outbound CHAR, etag CHAR, identifier CHAR, calendar CHAR, ts_extra_fields JSON);
CREATE TABLE IF NOT EXISTS doc_buyers_order (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, posted BOOLEAN, date Date, number_doc CHAR, author CHAR, bank_account CHAR, doc_currency CHAR, transactions_kind CHAR, work_kind CHAR, charges_discounts_kind CHAR, price_type CHAR, change_date Date, shipping_date Date, contract CHAR, closed BOOLEAN, cashbox CHAR, note CHAR, partner CHAR, `settlements_multiplicity` INT, `settlements_course` FLOAT, vat_price_included BOOLEAN, organization CHAR, responsible CHAR, project CHAR, event CHAR, invoice_state CHAR, start Date, vat CHAR, vat_included BOOLEAN, doc_amount FLOAT, cash_flow_type CHAR, finish Date, cell CHAR, use_goods BOOLEAN, ts_inventories JSON, ts_calendar_payments JSON, ts_jobs JSON, ts_executors JSON, ts_materials JSON, ts_prepayment JSON, ts_extra_fields JSON, ts_charges_discounts JSON);
CREATE TABLE IF NOT EXISTS ireg_nom_prices (price_type CHAR, nom CHAR, characteristic CHAR, price FLOAT, unit CHAR, PRIMARY KEY (price_type, nom, characteristic));
CREATE TABLE IF NOT EXISTS cat_cells (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, owner CHAR, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_price_groups (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, sorting INT, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_characteristics (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, owner CHAR, ts_extra_fields JSON);
CREATE TABLE IF NOT EXISTS cat_individuals (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, birth_date Date, sex CHAR, parent CHAR, ts_contact_information JSON, ts_extra_fields JSON);
CREATE TABLE IF NOT EXISTS cat_organizational_units (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, structural_unit_type CHAR, store_is_order BOOLEAN, organization CHAR, parent CHAR, ts_extra_fields JSON, ts_contact_information JSON);
CREATE TABLE IF NOT EXISTS cat_countries (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, name_full CHAR, alpha2 CHAR, alpha3 CHAR);
CREATE TABLE IF NOT EXISTS cat_cash_flow_articles (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, parent CHAR, ts_extra_fields JSON);
CREATE TABLE IF NOT EXISTS cat_vat_rates (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN);
CREATE TABLE IF NOT EXISTS cat_specifications (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, product_characteristic CHAR, owner CHAR);
CREATE TABLE IF NOT EXISTS cat_staff (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_invoice_states (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, clr CHAR);
CREATE TABLE IF NOT EXISTS cat_projects (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, start_date Date, expiration_date Date, partner CHAR, contract CHAR, note CHAR, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_users (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, invalid BOOLEAN, note CHAR, ancillary BOOLEAN, ts_extra_fields JSON, ts_contact_information JSON);
CREATE TABLE IF NOT EXISTS cat_nom_groups (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_nom (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, article CHAR, change_date Date, unit CHAR, name_full CHAR, nom_group CHAR, is_supplier CHAR, warehouse CHAR, specification CHAR, vat_rate CHAR, nom_type CHAR, cell CHAR, price_group CHAR, note CHAR, parent CHAR, ts_extra_fields JSON);
CREATE TABLE IF NOT EXISTS cat_organizations (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, prefix CHAR, okpo CHAR, inn CHAR, name_full CHAR, vat_price_included BOOLEAN, kpp CHAR, certificate_date_issue Date, certificate_series_number CHAR, individual_legal CHAR, ts_contact_information JSON, ts_extra_fields JSON);
CREATE TABLE IF NOT EXISTS cat_partners (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, inn CHAR, okpo CHAR, kpp CHAR, name_full CHAR, responsible CHAR, note CHAR, individual_legal CHAR, email_address CHAR, parent CHAR, ts_extra_fields JSON, ts_contact_information JSON);
CREATE TABLE IF NOT EXISTS cat_contact_persons (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, responsible CHAR, note CHAR, owner CHAR, ts_contact_information JSON, ts_extra_fields JSON);
CREATE TABLE IF NOT EXISTS cat_units (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, name_full CHAR, international_short CHAR);
CREATE TABLE IF NOT EXISTS cat_cashboxes (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, account_accounting CHAR);
CREATE TABLE IF NOT EXISTS cat_destinations (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, parent CHAR, ts_extra_fields JSON, ts_extra_properties JSON);
CREATE TABLE IF NOT EXISTS cat_nom_units (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, coefficient FLOAT, owner CHAR);
CREATE TABLE IF NOT EXISTS cat_contact_information_kinds (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, mandatory_fields BOOLEAN, tooltip CHAR, type CHAR, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_contracts (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `settlements_currency` CHAR, organization CHAR, contract_kind CHAR, price_type CHAR, charges_discounts_kind CHAR, owner CHAR, parent CHAR, ts_extra_fields JSON);
CREATE TABLE IF NOT EXISTS cat_bank_accounts (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, funds_currency CHAR, account_number CHAR, bank CHAR, `settlements_bank` CHAR, account_accounting CHAR, account_kind CHAR, correspondent_text CHAR, appointments_text CHAR, owner CHAR);
CREATE TABLE IF NOT EXISTS cat_identification_document (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN);
CREATE TABLE IF NOT EXISTS cat_property_values (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, heft FLOAT, owner CHAR, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_nom_prices_types (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, price_currency CHAR, rounding_in_a_big_way BOOLEAN, rate FLOAT, note CHAR);
CREATE TABLE IF NOT EXISTS cat_charges_discounts_kinds (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, rate FLOAT, note CHAR);
CREATE TABLE IF NOT EXISTS cat_charges_deductions_kinds (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, type CHAR, formula CHAR, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_banks (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, correspondent_account CHAR, city CHAR, address CHAR, phone_numbers CHAR, changed INT, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_currencies (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, name_full CHAR, extra_charge FLOAT, main_currency CHAR, parameters_russian_recipe CHAR);
CREATE TABLE IF NOT EXISTS cat_transport_means (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, brand CHAR, motor_vehicle_kind CHAR, ts_extra_fields JSON);
CREATE TABLE IF NOT EXISTS cat_banks_qualifier (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, correspondent_account CHAR, city CHAR, address CHAR, phone_numbers CHAR, activity_ceased BOOLEAN, parent CHAR);
CREATE TABLE IF NOT EXISTS cat_contacts_qualifier (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, id CHAR, `json` CHAR, f_key CHAR, organization CHAR, position CHAR, title CHAR, updated Date);
CREATE TABLE IF NOT EXISTS cat_calendars_google (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, backgroundcolor CHAR, colorid CHAR, foregroundcolor CHAR, id CHAR, f_key CHAR, `primary` BOOLEAN, selected CHAR, summary CHAR, timezone CHAR);
