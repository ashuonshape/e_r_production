view: btdocumentmetrics {
  sql_table_name: enterprise_dw.btdocumentmetrics ;;

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

  dimension: failed_open_count {
    type: number
    sql: ${TABLE}.failed_open_count ;;
  }

  dimension: inserted_from_count {
    type: number
    sql: ${TABLE}.inserted_from_count ;;
  }

  dimension: inserted_to_count {
    type: number
    sql: ${TABLE}.inserted_to_count ;;
  }

  dimension: open_count {
    type: number
    sql: ${TABLE}.open_count ;;
  }

  dimension: operating_system_name {
    type: string
    sql: ${TABLE}.operating_system_name ;;
  }

  dimension: operating_system_type {
    type: string
    sql: ${TABLE}.operating_system_type ;;
  }

  dimension: share_count {
    type: number
    sql: ${TABLE}.share_count ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}.team_id ;;
  }

  dimension: unshare_count {
    type: number
    sql: ${TABLE}.unshare_count ;;
  }

  measure: count {
    type: count
    drill_fields: [device_name, browser_name, operating_system_name, device_manufacturer_name]
  }
}
