view: btrevision {
  sql_table_name: enterprise_dw.btrevision ;;

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

  dimension: insertable_id {
    type: string
    sql: ${TABLE}.insertable_id ;;
  }

  dimension: is_obsolete {
    type: yesno
    sql: ${TABLE}.is_obsolete ;;
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

  dimension: next_revision_id {
    type: string
    sql: ${TABLE}.next_revision_id ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: part_id {
    type: string
    sql: ${TABLE}.part_id ;;
  }

  dimension: part_number {
    type: string
    sql: ${TABLE}.part_number ;;
  }

  dimension: previous_revision_id {
    type: string
    sql: ${TABLE}.previous_revision_id ;;
  }

  dimension: release_id {
    type: string
    sql: ${TABLE}.release_id ;;
  }

  dimension: revision {
    type: string
    sql: ${TABLE}.revision ;;
  }

  dimension: revision_id {
    type: string
    sql: ${TABLE}.revision_id ;;
  }

  dimension: revision_name {
    type: string
    sql: ${TABLE}.revision_name ;;
  }

  dimension: revision_rule_id {
    type: string
    sql: ${TABLE}.revision_rule_id ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.version_id ;;
  }

  measure: count {
    type: count
    drill_fields: [revision_name]
  }
}
