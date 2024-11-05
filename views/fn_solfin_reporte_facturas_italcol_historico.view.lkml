view: fn_solfin_reporte_facturas_italcol_historico {
  sql_table_name: bd_ic_cliente.fn_solfin_reporte_facturas_italcol_historico ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: centro_operacion {
    type: string
    sql: ${TABLE}.centro_operacion ;;
  }
  dimension: centro_operacion_cod {
    type: string
    sql: ${TABLE}.centro_operacion_cod ;;
  }
  dimension: comentario_plan_comercial {
    type: string
    sql: ${TABLE}.comentario_plan_comercial ;;
  }
  dimension: con_entrada_remesa {
    type: string
    sql: ${TABLE}.con_entrada_remesa ;;
  }
  dimension: condicion_pago_fact {
    type: string
    sql: ${TABLE}.condicion_pago_fact ;;
  }
  dimension: condicion_pago_oc {
    type: string
    sql: ${TABLE}.condicion_pago_oc ;;
  }
  dimension: condicion_pago_sc {
    type: string
    sql: ${TABLE}.condicion_pago_sc ;;
  }
  dimension: contacto_co {
    type: string
    sql: ${TABLE}.contacto_co ;;
  }
  dimension: correo_solicitante {
    type: string
    sql: ${TABLE}.correo_solicitante ;;
  }
  dimension: correo_usuario_comprador {
    type: string
    sql: ${TABLE}.correo_usuario_comprador ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: dias_pago {
    type: string
    sql: ${TABLE}.dias_pago ;;
  }
  dimension: dias_vencimiento_erp {
    type: string
    sql: ${TABLE}.dias_vencimiento_erp ;;
  }
  dimension: doc_remesas {
    type: string
    sql: ${TABLE}.doc_remesas ;;
  }
  dimension: documento_almacen {
    type: string
    sql: ${TABLE}.documento_almacen ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_actualizacion {
    type: string
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: fecha_emision {
    type: string
    sql: ${TABLE}.fecha_emision ;;
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
  dimension: fecha_vencimiento_erp {
    type: string
    sql: ${TABLE}.fecha_vencimiento_erp ;;
  }
  dimension: fecha_vencimiento_xml {
    type: string
    sql: ${TABLE}.fecha_vencimiento_xml ;;
  }
  dimension: id_centro_operacion {
    type: string
    sql: ${TABLE}.id_centro_operacion ;;
  }
  dimension: id_companya {
    type: string
    sql: ${TABLE}.id_companya ;;
  }
  dimension: moneda_fac {
    type: string
    sql: ${TABLE}.moneda_fac ;;
  }
  dimension: moneda_oc {
    type: string
    sql: ${TABLE}.moneda_oc ;;
  }
  dimension: moneda_sc {
    type: string
    sql: ${TABLE}.moneda_sc ;;
  }
  dimension: nit_proveedor {
    type: string
    sql: ${TABLE}.nit_proveedor ;;
  }
  dimension: num_cons_fact {
    type: string
    sql: ${TABLE}.num_cons_fact ;;
  }
  dimension: num_doc_contabilidad {
    type: string
    sql: ${TABLE}.num_doc_contabilidad ;;
  }
  dimension: numero_documento {
    type: string
    sql: ${TABLE}.numero_documento ;;
  }
  dimension: orden_compra {
    type: string
    sql: ${TABLE}.orden_compra ;;
  }
  dimension: origen_lectura {
    type: string
    sql: ${TABLE}.origen_lectura ;;
  }
  dimension: prefijo_fact {
    type: string
    sql: ${TABLE}.prefijo_fact ;;
  }
  dimension: razon_proveedor {
    type: string
    sql: ${TABLE}.razon_proveedor ;;
  }
  dimension: razon_social_empresa {
    type: string
    sql: ${TABLE}.razon_social_empresa ;;
  }
  dimension: regional {
    type: string
    sql: ${TABLE}.regional ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: tipo_cruxe {
    type: string
    sql: ${TABLE}.tipo_cruxe ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  dimension: tipo_facturacion {
    type: string
    sql: ${TABLE}.tipo_facturacion ;;
  }
  dimension: tipo_proceso {
    type: string
    sql: ${TABLE}.tipo_proceso ;;
  }
  dimension: usuario_aprobador {
    type: string
    sql: ${TABLE}.usuario_aprobador ;;
  }
  dimension: valor_iva {
    type: string
    sql: ${TABLE}.valor_iva ;;
  }
  dimension: valor_subtotal {
    type: string
    sql: ${TABLE}.valor_subtotal ;;
  }
  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
