view: ofertas_datos_adicionales_petro_peru {
  sql_table_name: bd_ic_cliente.ofertas_datos_adicionales_petro_peru ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: adjudicacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.adjudicacion ;;
  }
  dimension: anio_proceso {
    type: number
    sql: ${TABLE}.anio_proceso ;;
  }
  dimension: asistencia_sobre_1 {
    type: string
    sql: ${TABLE}.asistencia_sobre_1 ;;
  }
  dimension: asistencia_sobre_2 {
    type: string
    sql: ${TABLE}.asistencia_sobre_2 ;;
  }
  dimension: combinacion {
    type: string
    sql: ${TABLE}.combinacion ;;
  }
  dimension_group: condiciones_tecnicas_integradas {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.condiciones_tecnicas_integradas ;;
  }
  dimension_group: conferencia_participantes {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.conferencia_participantes ;;
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
  dimension: etapa_retrotraido {
    type: string
    sql: ${TABLE}.etapa_retrotraido ;;
  }
  dimension_group: evaluacion_sobre_1 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.evaluacion_sobre_1 ;;
  }
  dimension_group: evaluacion_sobre_2 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.evaluacion_sobre_2 ;;
  }
  dimension_group: fecha_apertura_sobre_1 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_apertura_sobre_1 ;;
  }
  dimension_group: fecha_apertura_sobre_2 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_apertura_sobre_2 ;;
  }
  dimension_group: fecha_cierre_apertura_sobre_1 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_cierre_apertura_sobre_1 ;;
  }
  dimension_group: fecha_cierre_apertura_sobre_2 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_cierre_apertura_sobre_2 ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_oferta_retrotraido {
    type: number
    sql: ${TABLE}.id_oferta_retrotraido ;;
  }
  dimension_group: limite_presentacion_consulta {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.limite_presentacion_consulta ;;
  }
  dimension_group: limite_registro_participante {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.limite_registro_participante ;;
  }
  dimension: numero_pacc {
    type: string
    sql: ${TABLE}.numero_pacc ;;
  }
  dimension: propuesta_electronica {
    type: string
    sql: ${TABLE}.propuesta_electronica ;;
  }
  dimension_group: respuesta_consulta {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.respuesta_consulta ;;
  }
  dimension: retrotraido {
    type: string
    sql: ${TABLE}.retrotraido ;;
  }
  dimension: seq_correlativo {
    type: string
    sql: ${TABLE}.seq_correlativo ;;
  }
  dimension: seq_proceso {
    type: string
    sql: ${TABLE}.seq_proceso ;;
  }
  dimension: solicitante {
    type: string
    sql: ${TABLE}.solicitante ;;
  }
  dimension: tipo_cambio {
    type: number
    sql: ${TABLE}.tipo_cambio ;;
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
