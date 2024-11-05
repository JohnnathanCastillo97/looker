view: evaluacion_ejercicio_puntaje {
  sql_table_name: bd_ic_cliente.evaluacion_ejercicio_puntaje ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_evaluacion {
    type: number
    sql: ${TABLE}.id_evaluacion ;;
  }
  dimension: id_evaluacion_ejercicio {
    type: number
    sql: ${TABLE}.id_evaluacion_ejercicio ;;
  }
  dimension: nit_empresa {
    type: string
    sql: ${TABLE}.nit_empresa ;;
  }
  dimension: puntaje_contratos {
    type: number
    sql: ${TABLE}.puntaje_contratos ;;
  }
  dimension: puntaje_facturacion {
    type: number
    sql: ${TABLE}.puntaje_facturacion ;;
  }
  dimension: resultado {
    type: number
    sql: ${TABLE}.resultado ;;
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
