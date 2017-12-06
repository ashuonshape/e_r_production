view: btreleasepackage {
  sql_table_name: enterprise_dw.btreleasepackage ;;

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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }

  dimension: is_obsoletion {
    type: yesno
    sql: ${TABLE}.is_obsoletion ;;
  }

  dimension: linked_document_ids {
    type: string
    sql: ${TABLE}.linked_document_ids ;;
  }

  dimension: linked_version_ids {
    type: string
    sql: ${TABLE}.linked_version_ids ;;
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

  dimension: package_thumbnail {
    type: string
    sql: ${TABLE}.package_thumbnail ;;
  }

  dimension: release_package_id {
    type: string
    sql: ${TABLE}.release_package_id ;;
  }

  dimension: release_package_name {
    type: string
    sql: ${TABLE}.release_package_name ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.version_id ;;
  }

  dimension: workflow_id {
    type: string
    sql: ${TABLE}.workflow_id ;;
  }

  dimension: workflow_state {
    type: string
    sql: ${TABLE}.workflow_state ;;
  }

  dimension: workspace_id {
    type: string
    sql: ${TABLE}.workspace_id ;;
  }

  measure: count {
    type: count
    drill_fields: [release_package_name]
  }
}
