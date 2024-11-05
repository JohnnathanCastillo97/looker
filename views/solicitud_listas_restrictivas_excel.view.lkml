view: solicitud_listas_restrictivas_excel {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_excel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_consulta {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaConsulta ;;
  }
  dimension_group: fecha_finalizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaFinalizacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.idCliente ;;
  }
  dimension: plantilla {
    type: string
    sql: ${TABLE}.plantilla ;;
  }
  dimension: solicitud_consecutivo {
    type: number
    sql: ${TABLE}.solicitudConsecutivo ;;
  }
  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipoSolicitud ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
