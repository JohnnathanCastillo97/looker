view: oferta_evaluacion_aprobacion_criterios_sobres {
  sql_table_name: bd_ic_cliente.oferta_evaluacion_aprobacion_criterios_sobres ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: concepto_aprobacion {
    type: string
    sql: ${TABLE}.concepto_aprobacion ;;
  }
  dimension: concepto_evaluacion {
    type: string
    sql: ${TABLE}.concepto_evaluacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension_group: fecha_evaluacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_evaluacion ;;
  }
  dimension: id_criterio {
    type: number
    sql: ${TABLE}.id_criterio ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: id_usuario_aprueba {
    type: number
    sql: ${TABLE}.id_usuario_aprueba ;;
  }
  dimension: id_usuario_evalua {
    type: number
    sql: ${TABLE}.id_usuario_evalua ;;
  }
  dimension: observacion_aprobacion {
    type: string
    sql: ${TABLE}.observacion_aprobacion ;;
  }
  dimension: observacion_evaluacion {
    type: string
    sql: ${TABLE}.observacion_evaluacion ;;
  }
  dimension: soporte_aprobacion {
    type: string
    sql: ${TABLE}.soporte_aprobacion ;;
  }
  dimension: soporte_evaluacion {
    type: string
    sql: ${TABLE}.soporte_evaluacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
