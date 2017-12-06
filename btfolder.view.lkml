view: btfolder {
  sql_table_name: enterprise_dw.btfolder ;;

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

  dimension: folder_description {
    type: string
    sql: ${TABLE}.folder_description ;;
  }

  dimension: folder_id {
    type: string
    sql: ${TABLE}.folder_id ;;
  }

  dimension: folder_name {
    type: string
    sql: ${TABLE}.folder_name ;;
  }

  dimension: folder_path {
    type: string
    sql: ${TABLE}.folder_path ;;
  }

  dimension: is_enterprise_owned {
    type: yesno
    sql: ${TABLE}.is_enterprise_owned ;;
  }

  dimension: is_orphaned {
    type: yesno
    sql: ${TABLE}.is_orphaned ;;
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

  dimension: root_folder {
    type: string
    sql: ${TABLE}.root_folder ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [folder_name]
  }
}
