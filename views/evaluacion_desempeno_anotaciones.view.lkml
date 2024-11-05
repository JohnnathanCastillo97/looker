view: evaluacion_desempeno_anotaciones {
  sql_table_name: bd_ic_cliente.evaluacion_desempeno_anotaciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anotacion {
    type: string
    sql: ${TABLE}.anotacion ;;
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
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
