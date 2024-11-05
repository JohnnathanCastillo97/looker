view: fn_solfin_reporte_facturas {
  sql_table_name: bd_ic_cliente.fn_solfin_reporte_facturas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aceptacion_responsable_factura {
    type: string
    sql: ${TABLE}.aceptacion_responsable_factura ;;
  }
  dimension: concepto_fact {
    type: string
    sql: ${TABLE}.concepto_fact ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: dias_pago {
    type: string
    sql: ${TABLE}.dias_pago ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_dian {
    type: string
    sql: ${TABLE}.estado_dian ;;
  }
  dimension: evento_dian {
    type: string
    sql: ${TABLE}.evento_dian ;;
  }
  dimension: f_id {
    type: string
    sql: ${TABLE}.f_id ;;
  }
  dimension: fecha_emision {
    type: string
    sql: ${TABLE}.fecha_emision ;;
  }
  dimension: fecha_env_validacion {
    type: string
    sql: ${TABLE}.fecha_env_validacion ;;
  }
  dimension: fecha_orden {
    type: string
    sql: ${TABLE}.fecha_orden ;;
  }
  dimension_group: fecha_pago {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_pago ;;
  }
  dimension: fecha_radicacion {
    type: string
    sql: ${TABLE}.fecha_radicacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: fecha_vencimiento {
    type: string
    sql: ${TABLE}.fecha_vencimiento ;;
  }
  dimension: fecha_vencimiento_sap {
    type: string
    sql: ${TABLE}.fecha_vencimiento_sap ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: importe_compensacion_loc {
    type: number
    sql: ${TABLE}.importe_compensacion_loc ;;
  }
  dimension: importe_retencion_loc {
    type: number
    sql: ${TABLE}.importe_retencion_loc ;;
  }
  dimension: iva_automativo {
    type: string
    sql: ${TABLE}.iva_automativo ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: motivo {
    type: string
    sql: ${TABLE}.motivo ;;
  }
  dimension: motivo_devolucion {
    type: string
    sql: ${TABLE}.motivo_devolucion ;;
  }
  dimension: nitempxx {
    type: string
    sql: ${TABLE}.nitempxx ;;
  }
  dimension: numero {
    type: string
    sql: ${TABLE}.numero ;;
  }
  dimension: numero_aceptacion {
    type: string
    sql: ${TABLE}.numero_aceptacion ;;
  }
  dimension: numero_int_s21 {
    type: string
    sql: ${TABLE}.numero_int_s21 ;;
  }
  dimension: observaciones_devolucion {
    type: string
    sql: ${TABLE}.observaciones_devolucion ;;
  }
  dimension: origen_lectura {
    type: string
    sql: ${TABLE}.origen_lectura ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: razonxxx {
    type: string
    sql: ${TABLE}.razonxxx ;;
  }
  dimension: responsable_factura {
    type: string
    sql: ${TABLE}.responsable_factura ;;
  }
  dimension: retenciones_add_2 {
    type: string
    sql: ${TABLE}.retenciones_add_2 ;;
  }
  dimension: retenciones_fac {
    type: string
    sql: ${TABLE}.retenciones_fac ;;
  }
  dimension: retenciones_ica {
    type: string
    sql: ${TABLE}.retenciones_ica ;;
  }
  dimension: retenciones_iva {
    type: string
    sql: ${TABLE}.retenciones_iva ;;
  }
  dimension: rretenciones_add_1 {
    type: string
    sql: ${TABLE}.rretenciones_add_1 ;;
  }
  dimension: saldo_abierto_po {
    type: number
    sql: ${TABLE}.saldo_abierto_po ;;
  }
  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  dimension: tipo_facturacion {
    type: string
    sql: ${TABLE}.tipo_facturacion ;;
  }
  dimension: tipo_proveedor {
    type: string
    sql: ${TABLE}.tipo_proveedor ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  dimension: valor_neto {
    type: number
    sql: ${TABLE}.valor_neto ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
