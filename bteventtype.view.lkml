view: bteventtype {
  sql_table_name: enterprise_dw.bteventtype ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: event_category {
    type: string
    sql: ${TABLE}.event_category ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_key {
    type: string
    sql: ${TABLE}.event_key ;;
  }

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }

  dimension: is_edit {
    type: string
    sql: ${TABLE}.is_edit ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }

  dimension: used {
    type: string
    sql: ${TABLE}.used ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
