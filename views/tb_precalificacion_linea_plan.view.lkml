view: tb_precalificacion_linea_plan {
  sql_table_name: bd_ic_cliente.tb_precalificacion_linea_plan ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaActualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaCreacion ;;
  }
  dimension: linea_id {
    type: number
    sql: ${TABLE}.lineaId ;;
  }
  dimension: precalificacion_id {
    type: number
    sql: ${TABLE}.precalificacionId ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
