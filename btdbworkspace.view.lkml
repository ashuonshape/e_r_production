view: btdbworkspace {
  sql_table_name: enterprise_dw.btdbworkspace ;;

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

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
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

  dimension: read_only {
    type: yesno
    sql: ${TABLE}.read_only ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: workspace_id {
    type: string
    sql: ${TABLE}.workspace_id ;;
  }

  dimension: workspace_name {
    type: string
    sql: ${TABLE}.workspace_name ;;
  }

  measure: count {
    type: count
    drill_fields: [workspace_name]
  }
}
