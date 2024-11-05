view: tg_oferta_evaluacion_documento_historial {
  sql_table_name: bd_ic_cliente.tg_oferta_evaluacion_documento_historial ;;

  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: id_documento {
    type: number
    sql: ${TABLE}.id_documento ;;
  }
  dimension: id_evaluacion {
    type: number
    sql: ${TABLE}.id_evaluacion ;;
  }
  dimension: id_historial {
    type: number
    sql: ${TABLE}.id_historial ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: tipo_usuario_registra {
    type: string
    sql: ${TABLE}.tipo_usuario_registra ;;
  }
  dimension: valoracion {
    type: string
    sql: ${TABLE}.valoracion ;;
  }
  measure: count {
    type: count
  }
}
