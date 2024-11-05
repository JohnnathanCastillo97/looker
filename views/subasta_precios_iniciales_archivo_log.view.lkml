view: subasta_precios_iniciales_archivo_log {
  sql_table_name: bd_ic_cliente.subasta_precios_iniciales_archivo_log ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: archivo {
    type: string
    sql: ${TABLE}.archivo ;;
  }
  dimension_group: fecha_carga {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_carga ;;
  }
  dimension: id_subasta {
    type: number
    sql: ${TABLE}.id_subasta ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
