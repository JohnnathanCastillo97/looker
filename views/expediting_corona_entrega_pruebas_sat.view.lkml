view: expediting_corona_entrega_pruebas_sat {
  sql_table_name: bd_ic_cliente.expediting_corona_entrega_pruebas_sat ;;
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
  dimension_group: fecha_real {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_real ;;
  }
  dimension: fecha_real_vs_programada {
    type: string
    sql: ${TABLE}.fecha_real_vs_programada ;;
  }
  dimension: file_path {
    type: string
    sql: ${TABLE}.file_path ;;
  }
  dimension: id_prueba_sat {
    type: number
    sql: ${TABLE}.id_prueba_sat ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
