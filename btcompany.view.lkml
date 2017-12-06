view: btcompany {
  sql_table_name: enterprise_dw.btcompany ;;

  dimension: address_id {
    type: string
    sql: ${TABLE}.address_id ;;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: company_name_lcase {
    type: string
    sql: ${TABLE}.company_name_lcase ;;
  }

  dimension: company_type {
    type: number
    sql: ${TABLE}.company_type ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: domain_prefix {
    type: string
    sql: ${TABLE}.domain_prefix ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
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

  dimension: release_restrictions {
    type: number
    sql: ${TABLE}.release_restrictions ;;
  }

  dimension: revision_scheme {
    type: number
    sql: ${TABLE}.revision_scheme ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
  }

  dimension: user_count {
    type: number
    sql: ${TABLE}.user_count ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name]
  }
}
