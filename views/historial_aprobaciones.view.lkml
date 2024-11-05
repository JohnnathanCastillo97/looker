view: historial_aprobaciones {
  sql_table_name: bd_ic_cliente.historial_aprobaciones ;;

  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: historial_id {
    type: number
    sql: ${TABLE}.historial_id ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: oferta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oferta_id ;;
  }
  dimension: tipo_historial {
    type: string
    sql: ${TABLE}.tipo_historial ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  measure: count {
    type: count
    drill_fields: [usuarios.username, usuarios.id, ofertas.id]
  }
}
