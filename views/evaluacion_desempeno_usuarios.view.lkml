view: evaluacion_desempeno_usuarios {
  sql_table_name: bd_ic_cliente.evaluacion_desempeno_usuarios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
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
  dimension: id_criterio {
    type: number
    sql: ${TABLE}.id_criterio ;;
  }
  dimension: id_evaluacion {
    type: number
    sql: ${TABLE}.id_evaluacion ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: puntaje {
    type: number
    sql: ${TABLE}.puntaje ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
