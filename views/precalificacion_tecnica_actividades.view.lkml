view: precalificacion_tecnica_actividades {
  sql_table_name: bd_ic_cliente.precalificacion_tecnica_actividades ;;

  dimension: cod_actividad {
    type: number
    sql: ${TABLE}.cod_actividad ;;
  }
  dimension: cod_precalificacion_tecnica {
    type: number
    sql: ${TABLE}.cod_precalificacion_tecnica ;;
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
  dimension: id_actividad {
    type: number
    sql: ${TABLE}.id_actividad ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
