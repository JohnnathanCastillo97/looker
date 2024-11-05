view: solicitud_historial_asignacion {
  sql_table_name: bd_ic_cliente.solicitud_historial_asignacion ;;
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
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: tipo_asignacion {
    type: string
    sql: ${TABLE}.tipo_asignacion ;;
  }
  dimension: usuario_registra {
    type: number
    sql: ${TABLE}.usuario_registra ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
