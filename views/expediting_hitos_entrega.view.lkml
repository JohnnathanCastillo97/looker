view: expediting_hitos_entrega {
  sql_table_name: bd_ic_cliente.expediting_hitos_entrega ;;
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
  dimension: id_hito {
    type: number
    sql: ${TABLE}.id_hito ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: path_file {
    type: string
    sql: ${TABLE}.path_file ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
