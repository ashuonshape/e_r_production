view: btrbacpermissionschemeentry {
  sql_table_name: enterprise_dw.btrbacpermissionschemeentry ;;

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

  dimension: permission_scheme_entry_id {
    type: string
    sql: ${TABLE}.permission_scheme_entry_id ;;
  }

  dimension: permission_scheme_id {
    type: string
    sql: ${TABLE}.permission_scheme_id ;;
  }

  dimension: permissions_t {
    type: string
    sql: ${TABLE}.permissions_t ;;
  }

  dimension: permissions_text {
    type: string
    sql: ${TABLE}.permissions_text ;;
  }

  dimension: role_id {
    type: string
    sql: ${TABLE}.role_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
