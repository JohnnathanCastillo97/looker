view: evaluacion {
  sql_table_name: bd_ic_cliente.evaluacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividad {
    type: string
    sql: ${TABLE}.actividad ;;
  }
  dimension: consecutivo {
    type: string
    sql: ${TABLE}.consecutivo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_evaluacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_evaluacion ;;
  }
  dimension: id_administrador {
    type: number
    sql: ${TABLE}.id_administrador ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_evaluacion_ejercicio {
    type: number
    sql: ${TABLE}.id_evaluacion_ejercicio ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: nombre_administrador {
    type: string
    sql: ${TABLE}.nombre_administrador ;;
  }
  dimension: numero_adjudicacion {
    type: number
    sql: ${TABLE}.numero_adjudicacion ;;
  }
  dimension: numero_documento_sap {
    type: string
    sql: ${TABLE}.numero_documento_sap ;;
  }
  dimension: numero_evaluaciones {
    type: string
    sql: ${TABLE}.numero_evaluaciones ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: posicion {
    type: string
    sql: ${TABLE}.posicion ;;
  }
  dimension: pregunta {
    type: string
    sql: ${TABLE}.pregunta ;;
  }
  dimension: puntaje_total {
    type: string
    sql: ${TABLE}.puntaje_total ;;
  }
  dimension: tipo_evaluacion {
    type: string
    sql: ${TABLE}.tipo_evaluacion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, evaluacion_contrato_aceptacion.count, evaluacion_contrato_anexos.count]
  }
}
