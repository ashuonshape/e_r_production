view: btelementopenclosemetrics_stage {
  sql_table_name: enterprise_dw.btelementopenclosemetrics_stage ;;

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
  }

  dimension: connection_id {
    type: string
    sql: ${TABLE}.connection_id ;;
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

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
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
    drill_fields: []
  }
}
