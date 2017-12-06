view: btuserlifecyclemetrics {
  sql_table_name: enterprise_dw.btuserlifecyclemetrics ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}.application_id ;;
  }

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension: browser_name {
    type: string
    sql: ${TABLE}.browser_name ;;
  }

  dimension: browser_type {
    type: string
    sql: ${TABLE}.browser_type ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_ip {
    type: string
    sql: ${TABLE}.client_ip ;;
  }

  dimension: client_version {
    type: string
    sql: ${TABLE}.client_version ;;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: connection_id {
    type: string
    sql: ${TABLE}.connection_id ;;
  }

  dimension: device_manufacturer_name {
    type: string
    sql: ${TABLE}.device_manufacturer_name ;;
  }

  dimension: device_manufacturer_type {
    type: string
    sql: ${TABLE}.device_manufacturer_type ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.device_name ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }

  dimension: element_id {
    type: string
    sql: ${TABLE}.element_id ;;
  }

  dimension: event_properties {
    type: string
    sql: ${TABLE}.event_properties ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_time ;;
  }

  dimension: event_type {
    type: number
    sql: ${TABLE}.event_type ;;
  }

  dimension: metrics_id {
    type: string
    sql: ${TABLE}.metrics_id ;;
  }

  dimension: num_seats {
    type: number
    sql: ${TABLE}.num_seats ;;
  }

  dimension: operating_system_name {
    type: string
    sql: ${TABLE}.operating_system_name ;;
  }

  dimension: operating_system_type {
    type: string
    sql: ${TABLE}.operating_system_type ;;
  }

  dimension: plan_id {
    type: string
    sql: ${TABLE}.plan_id ;;
  }

  dimension: previous_state {
    type: number
    sql: ${TABLE}.previous_state ;;
  }

  dimension: property_key_event_name {
    type: string
    sql: ${TABLE}.property_key_event_name ;;
  }

  dimension: property_key_event_name_space {
    type: string
    sql: ${TABLE}.property_key_event_name_space ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
  }

  dimension: stripe_id {
    type: string
    sql: ${TABLE}.stripe_id ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}.team_id ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  dimension: user_first_name {
    type: string
    sql: ${TABLE}.user_first_name ;;
  }

  dimension: user_last_name {
    type: string
    sql: ${TABLE}.user_last_name ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: user_object_id {
    type: string
    sql: ${TABLE}.user_object_id ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.version_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      device_name,
      browser_name,
      operating_system_name,
      device_manufacturer_name,
      account_name,
      property_key_event_name,
      user_name,
      company_name,
      user_first_name,
      user_last_name
    ]
  }
}
