view: btaclentry {
  sql_table_name: enterprise_dw.btaclentry ;;

  dimension: acl_entry_id {
    type: string
    sql: ${TABLE}.acl_entry_id ;;
  }


  dimension: acl_name {
    type: string
    sql: ${TABLE}.acl_name ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_date ;;
  }

  dimension: deleted {
    type: yesno
    sql: ${TABLE}.deleted ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: entry_id {
    type: string
    sql: ${TABLE}.entry_id ;;
  }

  dimension: entry_type {
    type: number
    sql: ${TABLE}.entry_type ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
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

  dimension: object_id {
    type: string
    sql: ${TABLE}.object_id ;;
  }

  dimension: object_type {
    type: number
    sql: ${TABLE}.object_type ;;
  }

  dimension: pending_transfer {
    type: yesno
    sql: ${TABLE}.pending_transfer ;;
  }

  dimension: permissions_t {
    type: string
    sql: ${TABLE}.permissions_t ;;
  }

  dimension: permissions_text {
    type: string
    sql: ${TABLE}.permissions_text ;;
  }

  measure: count {
    type: count
    drill_fields: [acl_name]
  }
}
