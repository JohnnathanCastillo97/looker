view: fn_solfin_descuento_reporte {
  sql_table_name: bd_ic_cliente.fn_solfin_descuento_reporte ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: a_empresa {
    type: string
    sql: ${TABLE}.a_empresa ;;
  }
  dimension: f_banco {
    type: string
    sql: ${TABLE}.f_banco ;;
  }
  dimension: f_descripcion_servicio {
    type: string
    sql: ${TABLE}.f_descripcion_servicio ;;
  }
  dimension: f_dias_pago {
    type: string
    sql: ${TABLE}.f_dias_pago ;;
  }
  dimension: f_estado {
    type: string
    sql: ${TABLE}.f_estado ;;
  }
  dimension: f_estado_descuento {
    type: string
    sql: ${TABLE}.f_estado_descuento ;;
  }
  dimension: f_fecha_aceptacion_contabilidad {
    type: string
    sql: ${TABLE}.f_fecha_aceptacion_contabilidad ;;
  }
  dimension: f_fecha_contabilidad {
    type: string
    sql: ${TABLE}.f_fecha_contabilidad ;;
  }
  dimension: f_fecha_emision {
    type: string
    sql: ${TABLE}.f_fecha_emision ;;
  }
  dimension: f_fecha_factura_imp_cxp {
    type: string
    sql: ${TABLE}.f_fecha_factura_imp_cxp ;;
  }
  dimension: f_fecha_giro_impor {
    type: string
    sql: ${TABLE}.f_fecha_giro_impor ;;
  }
  dimension: f_fecha_radicacion {
    type: string
    sql: ${TABLE}.f_fecha_radicacion ;;
  }
  dimension: f_fecha_recibo_imp_cxp {
    type: string
    sql: ${TABLE}.f_fecha_recibo_imp_cxp ;;
  }
  dimension: f_fecha_vencimiento {
    type: string
    sql: ${TABLE}.f_fecha_vencimiento ;;
  }
  dimension: f_id_cliente {
    type: string
    sql: ${TABLE}.f_id_cliente ;;
  }
  dimension: f_id_fondeador {
    type: string
    sql: ${TABLE}.f_id_fondeador ;;
  }
  dimension: f_id_pagador {
    type: string
    sql: ${TABLE}.f_id_pagador ;;
  }
  dimension: f_id_sap_fondeador {
    type: string
    sql: ${TABLE}.f_id_sap_fondeador ;;
  }
  dimension: f_moneda {
    type: string
    sql: ${TABLE}.f_moneda ;;
  }
  dimension: f_numero_aceptacion {
    type: string
    sql: ${TABLE}.f_numero_aceptacion ;;
  }
  dimension: f_numero_bancaria_fondeador {
    type: string
    sql: ${TABLE}.f_numero_bancaria_fondeador ;;
  }
  dimension: f_numero_factura {
    type: string
    sql: ${TABLE}.f_numero_factura ;;
  }
  dimension: f_observaciones_devolucion {
    type: string
    sql: ${TABLE}.f_observaciones_devolucion ;;
  }
  dimension: f_saldo_abierto_po {
    type: string
    sql: ${TABLE}.f_saldo_abierto_po ;;
  }
  dimension: f_seq_id {
    type: number
    sql: ${TABLE}.f_seq_id ;;
  }
  dimension: f_tipo_cuenta {
    type: string
    sql: ${TABLE}.f_tipo_cuenta ;;
  }
  dimension: f_tipo_documento {
    type: string
    sql: ${TABLE}.f_tipo_documento ;;
  }
  dimension: f_tipo_facturacion {
    type: string
    sql: ${TABLE}.f_tipo_facturacion ;;
  }
  dimension: f_validacion_contabilidad {
    type: string
    sql: ${TABLE}.f_validacion_contabilidad ;;
  }
  dimension: f_valor_neto {
    type: string
    sql: ${TABLE}.f_valor_neto ;;
  }
  dimension: fon_nit_fondeador {
    type: string
    sql: ${TABLE}.fon_nit_fondeador ;;
  }
  dimension: fon_razon_social_fondeador {
    type: string
    sql: ${TABLE}.fon_Razon_social_fondeador ;;
  }
  dimension: o_id_sap_proveedor {
    type: string
    sql: ${TABLE}.o_id_sap_proveedor ;;
  }
  dimension: ordn_estado {
    type: string
    sql: ${TABLE}.ordn_estado ;;
  }
  dimension: p_nit {
    type: string
    sql: ${TABLE}.p_nit ;;
  }
  dimension: p_razon {
    type: string
    sql: ${TABLE}.p_razon ;;
  }
  dimension: u_usuario_contabilidad {
    type: string
    sql: ${TABLE}.u_usuario_contabilidad ;;
  }
  dimension: us_usuario_solicitante {
    type: string
    sql: ${TABLE}.us_usuario_solicitante ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
