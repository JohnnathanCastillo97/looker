view: precalificacion_tecnica {
  sql_table_name: bd_ic_cliente.precalificacion_tecnica ;;

  dimension: anexo {
    type: string
    sql: ${TABLE}.anexo ;;
  }
  dimension_group: anio_experiencias {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.anio_experiencias ;;
  }
  dimension: cantidad_experiencias {
    type: yesno
    sql: ${TABLE}.cantidad_experiencias ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_precalificacion_tecnica {
    type: number
    sql: ${TABLE}.id_precalificacion_tecnica ;;
  }
  dimension: resultado_observaciones {
    type: string
    sql: ${TABLE}.resultado_observaciones ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  dimension: valor_minimo_experiencia {
    type: number
    sql: ${TABLE}.valor_minimo_experiencia ;;
  }
  dimension: valor_total_experiencia {
    type: number
    sql: ${TABLE}.valor_total_experiencia ;;
  }
  measure: count {
    type: count
  }
}
