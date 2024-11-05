view: precalificacion_tecnica_resultados {
  sql_table_name: bd_ic_cliente.precalificacion_tecnica_resultados ;;

  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_evaluacion_hse {
    type: number
    sql: ${TABLE}.cod_evaluacion_hse ;;
  }
  dimension: cod_precalificacion_tecnica {
    type: number
    sql: ${TABLE}.cod_precalificacion_tecnica ;;
  }
  dimension: cumple_cantidad_experiencias {
    type: string
    sql: ${TABLE}.cumple_cantidad_experiencias ;;
  }
  dimension: cumple_certificaciones {
    type: string
    sql: ${TABLE}.cumple_certificaciones ;;
  }
  dimension: cumple_evaluacion_hse {
    type: string
    sql: ${TABLE}.cumple_evaluacion_hse ;;
  }
  dimension: cumple_precalificacion {
    type: string
    sql: ${TABLE}.cumple_precalificacion ;;
  }
  dimension: cumple_valor_total {
    type: string
    sql: ${TABLE}.cumple_valor_total ;;
  }
  dimension: empresa_seleccionada {
    type: string
    sql: ${TABLE}.empresa_seleccionada ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_resultado {
    type: number
    sql: ${TABLE}.id_resultado ;;
  }
  dimension: observaciones_listas_restrictivas {
    type: string
    sql: ${TABLE}.observaciones_listas_restrictivas ;;
  }
  dimension: registro_listas_restictivas {
    type: string
    sql: ${TABLE}.registro_listas_restictivas ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
