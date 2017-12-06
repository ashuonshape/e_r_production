view: btdocumentlifecyclemetrics {
  sql_table_name: enterprise_dw.btdocumentlifecyclemetrics ;;

  dimension: browser_name {
    type: string
    sql: ${TABLE}.browser_name ;;
  }

  dimension: browser_type {
    type: string
    sql: ${TABLE}.browser_type ;;
  }

  dimension: client_version {
    type: string
    sql: ${TABLE}.client_version ;;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
  }

  dimension: connection_id {
    type: string
    sql: ${TABLE}.connection_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

  dimension: document_object_id {
    type: string
    sql: ${TABLE}.document_object_id ;;
  }

  dimension: element_id {
    type: string
    sql: ${TABLE}.element_id ;;
  }

  dimension: element_name {
    type: string
    sql: ${TABLE}.element_name ;;
  }

  dimension: element_type {
    type: string
    sql: ${TABLE}.element_type ;;
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

  dimension: feature_namespace {
    type: string
    sql: ${TABLE}.feature_namespace ;;
  }

  dimension: feature_type {
    type: string
    sql: ${TABLE}.feature_type ;;
  }

  dimension: metrics_id {
    type: string
    sql: ${TABLE}.metrics_id ;;
  }

  dimension: operating_system_name {
    type: string
    sql: ${TABLE}.operating_system_name ;;
  }

  dimension: operating_system_type {
    type: string
    sql: ${TABLE}.operating_system_type ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}.team_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: workspace_id {
    type: string
    sql: ${TABLE}.workspace_id ;;
  }

  measure: count {
    type: count
    drill_fields: [device_name, browser_name, operating_system_name, device_manufacturer_name, element_name]
  }
}
