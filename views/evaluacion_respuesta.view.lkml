view: evaluacion_respuesta {
  sql_table_name: bd_ic_cliente.evaluacion_respuesta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aspecto {
    type: string
    sql: ${TABLE}.aspecto ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: empresa_id {
    type: number
    sql: ${TABLE}.empresa_id ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_evaluacion_contrato_usuario {
    type: number
    sql: ${TABLE}.id_evaluacion_contrato_usuario ;;
  }
  dimension: plan_mejora {
    type: string
    sql: ${TABLE}.plan_mejora ;;
  }
  dimension: puntaje {
    type: number
    sql: ${TABLE}.puntaje ;;
  }
  dimension: respuestas {
    type: string
    sql: ${TABLE}.respuestas ;;
  }
  dimension: soporte {
    type: string
    sql: ${TABLE}.soporte ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
