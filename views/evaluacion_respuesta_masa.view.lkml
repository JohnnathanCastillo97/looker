view: evaluacion_respuesta_masa {
  sql_table_name: bd_ic_cliente.evaluacion_respuesta_masa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: auto_generada {
    type: string
    sql: ${TABLE}.auto_generada ;;
  }
  dimension: califica {
    type: string
    sql: ${TABLE}.califica ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: empresa_id {
    type: number
    sql: ${TABLE}.empresa_id ;;
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
  dimension: formato {
    type: string
    sql: ${TABLE}.formato ;;
  }
  dimension: id_evaluacion_contrato_usuario {
    type: number
    sql: ${TABLE}.id_evaluacion_contrato_usuario ;;
  }
  dimension: plan_mejora {
    type: string
    sql: ${TABLE}.plan_mejora ;;
  }
  dimension: porcentaje_criticidad {
    type: string
    sql: ${TABLE}.porcentaje_criticidad ;;
  }
  dimension: puntaje {
    type: number
    sql: ${TABLE}.puntaje ;;
  }
  dimension: respuestas {
    type: string
    sql: ${TABLE}.respuestas ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
