view: btreleasepackageitem {
  sql_table_name: enterprise_dw.btreleasepackageitem ;;

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

  dimension: element_id {
    type: string
    sql: ${TABLE}.element_id ;;
  }

  dimension: element_type {
    type: number
    sql: ${TABLE}.element_type ;;
  }

  dimension: errors {
    type: string
    sql: ${TABLE}.errors ;;
  }

  dimension: is_included {
    type: yesno
    sql: ${TABLE}.is_included ;;
  }

  dimension: is_revision_managed {
    type: yesno
    sql: ${TABLE}.is_revision_managed ;;
  }

  dimension: microversion_id {
    type: string
    sql: ${TABLE}.microversion_id ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
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

  dimension: obsoletion_revision {
    type: string
    sql: ${TABLE}.obsoletion_revision ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }

  dimension: part_id {
    type: string
    sql: ${TABLE}.part_id ;;
  }

  dimension: part_number {
    type: string
    sql: ${TABLE}.part_number ;;
  }

  dimension: release_package_item_id {
    type: string
    sql: ${TABLE}.release_package_item_id ;;
  }

  dimension: release_package_item_name {
    type: string
    sql: ${TABLE}.release_package_item_name ;;
  }

  dimension: revision_rule_id {
    type: string
    sql: ${TABLE}.revision_rule_id ;;
  }

  dimension: rpid {
    type: string
    sql: ${TABLE}.rpid ;;
  }

  dimension: small_thumbnail_href {
    type: string
    sql: ${TABLE}.small_thumbnail_href ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.version_id ;;
  }

  dimension: workspace_id {
    type: string
    sql: ${TABLE}.workspace_id ;;
  }

  measure: count {
    type: count
    drill_fields: [release_package_item_name]
  }
}
