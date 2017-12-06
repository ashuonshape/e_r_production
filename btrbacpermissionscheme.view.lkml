view: btrbacpermissionscheme {
  sql_table_name: enterprise_dw.btrbacpermissionscheme ;;

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
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

  dimension: permission_scheme_id {
    type: string
    sql: ${TABLE}.permission_scheme_id ;;
  }

  dimension: permission_scheme_name {
    type: string
    sql: ${TABLE}.permission_scheme_name ;;
  }

  dimension: predefined_permission_scheme {
    type: number
    sql: ${TABLE}.predefined_permission_scheme ;;
  }

  measure: count {
    type: count
    drill_fields: [permission_scheme_name]
  }
}
