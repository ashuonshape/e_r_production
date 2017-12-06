view: btusermetrics {
  sql_table_name: enterprise_dw.btusermetrics ;;

  dimension: assembly_creates {
    type: number
    sql: ${TABLE}.assembly_creates ;;
  }

  dimension: assembly_opens {
    type: number
    sql: ${TABLE}.assembly_opens ;;
  }

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

  dimension: document_creates {
    type: number
    sql: ${TABLE}.document_creates ;;
  }

  dimension: document_deletes {
    type: number
    sql: ${TABLE}.document_deletes ;;
  }

  dimension: document_imports {
    type: number
    sql: ${TABLE}.document_imports ;;
  }

  dimension: document_opens {
    type: number
    sql: ${TABLE}.document_opens ;;
  }

  dimension: document_shares {
    type: number
    sql: ${TABLE}.document_shares ;;
  }

  dimension: document_unshares {
    type: number
    sql: ${TABLE}.document_unshares ;;
  }

  dimension: document_version_creates {
    type: number
    sql: ${TABLE}.document_version_creates ;;
  }

  dimension: drawing_creates {
    type: number
    sql: ${TABLE}.drawing_creates ;;
  }

  dimension: failed_logins {
    type: number
    sql: ${TABLE}.failed_logins ;;
  }

  dimension_group: last_storage_update {
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
    sql: ${TABLE}.last_storage_update_time ;;
  }

  dimension: logins {
    type: number
    sql: ${TABLE}.logins ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: operating_system_name {
    type: string
    sql: ${TABLE}.operating_system_name ;;
  }

  dimension: operating_system_type {
    type: string
    sql: ${TABLE}.operating_system_type ;;
  }

  dimension: part_studio_creates {
    type: number
    sql: ${TABLE}.part_studio_creates ;;
  }

  dimension: part_studio_opens {
    type: number
    sql: ${TABLE}.part_studio_opens ;;
  }

  dimension: private_documents {
    type: number
    sql: ${TABLE}.private_documents ;;
  }

  dimension: public_documents {
    type: number
    sql: ${TABLE}.public_documents ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}.team_id ;;
  }

  dimension: total_storage_bytes {
    type: number
    sql: ${TABLE}.total_storage_bytes ;;
  }

  dimension: total_storage_private_bytes {
    type: number
    sql: ${TABLE}.total_storage_private_bytes ;;
  }

  dimension: total_storage_public_bytes {
    type: number
    sql: ${TABLE}.total_storage_public_bytes ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  measure: count {
    type: count
    drill_fields: [device_name, browser_name, device_manufacturer_name, operating_system_name, user_name]
  }
}
