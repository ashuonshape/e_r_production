view: lookups {
  sql_table_name: enterprise_dw.lookups ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
