view: evaluacion_contrato {
  sql_table_name: bd_ic_cliente.evaluacion_contrato ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cld_sap_entregadas {
    type: string
    sql: ${TABLE}.cld_sap_entregadas ;;
  }
  dimension: cld_sap_reclamos {
    type: string
    sql: ${TABLE}.cld_sap_reclamos ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: compania_evaluacion {
    type: string
    sql: ${TABLE}.compania_evaluacion ;;
  }
  dimension: compania_evaluacion_sap {
    type: string
    sql: ${TABLE}.compania_evaluacion_sap ;;
  }
  dimension: concepto_orden_compra {
    type: string
    sql: ${TABLE}.concepto_orden_compra ;;
  }
  dimension: cpmt_sap_expediting {
    type: string
    sql: ${TABLE}.cpmt_sap_expediting ;;
  }
  dimension: criticidad_evaluacion {
    type: string
    sql: ${TABLE}.criticidad_evaluacion ;;
  }
  dimension: division_evaluacion {
    type: string
    sql: ${TABLE}.division_evaluacion ;;
  }
  dimension: doc_evaluacion {
    type: string
    sql: ${TABLE}.doc_evaluacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: evaluador_seguridad {
    type: string
    sql: ${TABLE}.evaluador_seguridad ;;
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
  dimension: fecha_fin_evaluacion {
    type: string
    sql: ${TABLE}.fecha_fin_evaluacion ;;
  }
  dimension: fecha_inicio_evaluacion {
    type: string
    sql: ${TABLE}.fecha_inicio_evaluacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_evaluacion_ejercicio {
    type: number
    sql: ${TABLE}.id_evaluacion_ejercicio ;;
  }
  dimension: ids_expediting {
    type: string
    sql: ${TABLE}.ids_expediting ;;
  }
  dimension: negociador {
    type: string
    sql: ${TABLE}.negociador ;;
  }
  dimension: nit_empresa {
    type: string
    sql: ${TABLE}.nit_empresa ;;
  }
  dimension: numero_orden_compra {
    type: string
    sql: ${TABLE}.numero_orden_compra ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: origen_proveedor_evaluacion {
    type: string
    sql: ${TABLE}.origen_proveedor_evaluacion ;;
  }
  dimension: puntaje_calidad_evaluacion {
    type: string
    sql: ${TABLE}.puntaje_calidad_evaluacion ;;
  }
  dimension: puntaje_cumplimiento_evaluacion {
    type: string
    sql: ${TABLE}.puntaje_cumplimiento_evaluacion ;;
  }
  dimension: puntaje_facturacion_evaluacion {
    type: string
    sql: ${TABLE}.puntaje_facturacion_evaluacion ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: subfamilia {
    type: number
    sql: ${TABLE}.subfamilia ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: valor_contrato {
    type: string
    sql: ${TABLE}.valor_contrato ;;
  }
  measure: count {
    type: count
    drill_fields: [id, evaluacion_contrato_adicionales.count]
  }
}
