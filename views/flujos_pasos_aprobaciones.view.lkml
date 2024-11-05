view: flujos_pasos_aprobaciones {
  sql_table_name: bd_ic_cliente.flujos_pasos_aprobaciones ;;

  dimension: abreviatura_flujo_aprobacion {
    type: string
    sql: ${TABLE}.ABREVIATURA_FLUJO_APROBACION ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FECHA_APROBACION ;;
  }
  dimension: id_cliente_flujo_aprobacion {
    type: number
    sql: ${TABLE}.ID_CLIENTE_FLUJO_APROBACION ;;
  }
  dimension: id_flujo_aprobacion {
    type: number
    sql: ${TABLE}.ID_FLUJO_APROBACION ;;
  }
  dimension: id_modulo {
    type: number
    sql: ${TABLE}.ID_MODULO ;;
  }
  dimension: id_objeto_aprobacion {
    type: number
    sql: ${TABLE}.ID_OBJETO_APROBACION ;;
  }
  dimension: id_paso_aprobacion {
    type: number
    sql: ${TABLE}.ID_PASO_APROBACION ;;
  }
  dimension: id_perfil_flujo_aprobacion {
    type: number
    sql: ${TABLE}.ID_PERFIL_FLUJO_APROBACION ;;
  }
  dimension: id_usuario_aprobacion {
    type: number
    sql: ${TABLE}.ID_USUARIO_APROBACION ;;
  }
  dimension: modulo {
    type: string
    sql: ${TABLE}.MODULO ;;
  }
  dimension: nombre_usuario_aprobacion {
    type: string
    sql: ${TABLE}.NOMBRE_USUARIO_APROBACION ;;
  }
  dimension: obligatorio_paso {
    type: string
    sql: ${TABLE}.OBLIGATORIO_PASO ;;
  }
  dimension: observacion_aprobacion {
    type: string
    sql: ${TABLE}.OBSERVACION_APROBACION ;;
  }
  dimension: perfil_aprobador_paso {
    type: string
    sql: ${TABLE}.PERFIL_APROBADOR_PASO ;;
  }
  dimension: requisito_aprobacion {
    type: string
    sql: ${TABLE}.REQUISITO_APROBACION ;;
  }
  dimension: tipo_paso {
    type: string
    sql: ${TABLE}.TIPO_PASO ;;
  }
  dimension: titulo_paso {
    type: string
    sql: ${TABLE}.TITULO_PASO ;;
  }
  dimension: usuario_creacion_aprobacion {
    type: number
    sql: ${TABLE}.USUARIO_CREACION_APROBACION ;;
  }
  measure: count {
    type: count
  }
}
