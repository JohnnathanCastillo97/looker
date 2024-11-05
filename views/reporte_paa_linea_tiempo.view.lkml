view: reporte_paa_linea_tiempo {
  sql_table_name: bd_ic_cliente.reporte_paa_linea_tiempo ;;

  dimension: centro_de_costo_linea {
    type: string
    sql: ${TABLE}.CENTRO_DE_COSTO_LINEA ;;
  }
  dimension: clase_adquisicion_linea {
    type: string
    sql: ${TABLE}.CLASE_ADQUISICION_LINEA ;;
  }
  dimension: codigo_unspsc_linea {
    type: number
    sql: ${TABLE}.CODIGO_UNSPSC_LINEA ;;
  }
  dimension: comprador_linea {
    type: number
    sql: ${TABLE}.COMPRADOR_LINEA ;;
  }
  dimension: duracion_estimada_contrato_linea {
    type: number
    sql: ${TABLE}.DURACION_ESTIMADA_CONTRATO_LINEA ;;
  }
  dimension: estado_linea {
    type: string
    sql: ${TABLE}.ESTADO_LINEA ;;
  }
  dimension_group: fecha_aprobacion_requisicion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FECHA_APROBACION_REQUISICION ;;
  }
  dimension_group: fecha_creacion_aoc {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FECHA_CREACION_AOC ;;
  }
  dimension_group: fecha_creacion_estudio_mercado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FECHA_CREACION_ESTUDIO_MERCADO ;;
  }
  dimension_group: fecha_creacion_requisicion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FECHA_CREACION_REQUISICION ;;
  }
  dimension_group: fecha_en_firme_requisicion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FECHA_EN_FIRME_REQUISICION ;;
  }
  dimension_group: fecha_estimada_inicio_contrato_linea {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA_ESTIMADA_INICIO_CONTRATO_LINEA ;;
  }
  dimension: fuente_recursos_linea {
    type: string
    sql: ${TABLE}.FUENTE_RECURSOS_LINEA ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.ID_CLIENTE ;;
  }
  dimension: id_linea {
    type: number
    sql: ${TABLE}.ID_LINEA ;;
  }
  dimension: linea_modulo_actual {
    type: string
    sql: ${TABLE}.LINEA_MODULO_ACTUAL ;;
  }
  dimension: modalidad_seleccion_linea {
    type: string
    sql: ${TABLE}.MODALIDAD_SELECCION_LINEA ;;
  }
  dimension: nombre_comprador_linea {
    type: string
    sql: ${TABLE}.NOMBRE_COMPRADOR_LINEA ;;
  }
  dimension: nombre_supervisor_linea {
    type: string
    sql: ${TABLE}.NOMBRE_SUPERVISOR_LINEA ;;
  }
  dimension: nombre_usuario_aprobacion_requisicion {
    type: string
    sql: ${TABLE}.NOMBRE_USUARIO_APROBACION_REQUISICION ;;
  }
  dimension: nombre_usuario_creacion_requisicion {
    type: string
    sql: ${TABLE}.NOMBRE_USUARIO_CREACION_REQUISICION ;;
  }
  dimension: nombre_usuario_en_firme_requisicion {
    type: string
    sql: ${TABLE}.NOMBRE_USUARIO_EN_FIRME_REQUISICION ;;
  }
  dimension: numero_linea {
    type: string
    sql: ${TABLE}.NUMERO_LINEA ;;
  }
  dimension: objeto_linea {
    type: string
    sql: ${TABLE}.OBJETO_LINEA ;;
  }
  dimension: presupuesto_estudio_mercado {
    type: number
    sql: ${TABLE}.PRESUPUESTO_ESTUDIO_MERCADO ;;
  }
  dimension: supervisor_linea {
    type: number
    sql: ${TABLE}.SUPERVISOR_LINEA ;;
  }
  dimension: tipo_linea {
    type: string
    sql: ${TABLE}.TIPO_LINEA ;;
  }
  dimension: usuario_aprobacion_requisicion {
    type: number
    sql: ${TABLE}.USUARIO_APROBACION_REQUISICION ;;
  }
  dimension: usuario_creacion_requisicion {
    type: number
    sql: ${TABLE}.USUARIO_CREACION_REQUISICION ;;
  }
  dimension: usuario_en_firme_requisicion {
    type: number
    sql: ${TABLE}.USUARIO_EN_FIRME_REQUISICION ;;
  }
  dimension: valor_futura_linea {
    type: string
    sql: ${TABLE}.VALOR_FUTURA_LINEA ;;
  }
  dimension: valor_planeado_linea {
    type: string
    sql: ${TABLE}.VALOR_PLANEADO_LINEA ;;
  }
  dimension: valor_total_linea {
    type: string
    sql: ${TABLE}.VALOR_TOTAL_LINEA ;;
  }
  measure: count {
    type: count
  }
}
