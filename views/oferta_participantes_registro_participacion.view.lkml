view: oferta_participantes_registro_participacion {
  sql_table_name: bd_ic_cliente.oferta_participantes_registro_participacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: ruta_formato_constancia {
    type: string
    sql: ${TABLE}.ruta_formato_constancia ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
