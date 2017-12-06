view: btdocument {
  sql_table_name: enterprise_dw.btdocument ;;

  dimension: anonymous_access {
    type: yesno
    sql: ${TABLE}.anonymous_access ;;
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

  dimension: document_name {
    type: string
    sql: ${TABLE}.document_name ;;
  }

  dimension: document_type {
    type: number
    sql: ${TABLE}.document_type ;;
  }

  dimension: education_plan {
    type: yesno
    sql: ${TABLE}.education_plan ;;
  }

  dimension: internal_name {
    type: string
    sql: ${TABLE}.internal_name ;;
  }

  dimension: is_enterprise_owned {
    type: yesno
    sql: ${TABLE}.is_enterprise_owned ;;
  }

  dimension: is_public {
    type: yesno
    sql: ${TABLE}.is_public ;;
  }

  dimension: items_reference {
    type: number
    sql: ${TABLE}.items_reference ;;
  }

  dimension: links {
    type: string
    sql: ${TABLE}.links ;;
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

  dimension: number_of_times_copied {
    type: number
    sql: ${TABLE}.number_of_times_copied ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: owner_type {
    type: number
    sql: ${TABLE}.owner_type ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: readers {
    type: string
    sql: ${TABLE}.readers ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [document_name, internal_name]
  }
}
