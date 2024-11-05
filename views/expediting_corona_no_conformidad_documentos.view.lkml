view: expediting_corona_no_conformidad_documentos {
  sql_table_name: bd_ic_cliente.expediting_corona_no_conformidad_documentos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: create_user {
    type: number
    sql: ${TABLE}.create_user ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: file_path {
    type: string
    sql: ${TABLE}.file_path ;;
  }
  dimension: id_no_conformidad {
    type: number
    sql: ${TABLE}.id_no_conformidad ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
