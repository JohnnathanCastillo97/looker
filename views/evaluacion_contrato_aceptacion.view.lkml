view: evaluacion_contrato_aceptacion {
  sql_table_name: bd_ic_cliente.evaluacion_contrato_aceptacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aceptacion {
    type: string
    sql: ${TABLE}.aceptacion ;;
  }
  dimension: adicional {
    type: string
    sql: ${TABLE}.adicional ;;
  }
  dimension: aplica_reevaluacion {
    type: string
    sql: ${TABLE}.aplica_reevaluacion ;;
  }
  dimension: evaluacion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.evaluacion_id ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: soporte {
    type: string
    sql: ${TABLE}.soporte ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, evaluacion.id, usuarios.username, usuarios.id]
  }
}
