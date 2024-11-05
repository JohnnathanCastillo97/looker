view: solfin_pagadores_alta {
  sql_table_name: bd_ic_cliente.solfin_pagadores_alta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: base_x_calculos {
    type: string
    sql: ${TABLE}.base_x_calculos ;;
  }
  dimension: cod_agente {
    type: string
    sql: ${TABLE}.cod_agente ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: comentario_revision {
    type: string
    sql: ${TABLE}.comentario_revision ;;
  }
  dimension: comentario_validacion_solicitud {
    type: string
    sql: ${TABLE}.comentario_validacion_solicitud ;;
  }
  dimension: comision_suplos {
    type: string
    sql: ${TABLE}.comision_suplos ;;
  }
  dimension: cupo_proveedor {
    type: string
    sql: ${TABLE}.cupo_proveedor ;;
  }
  dimension: email_proveedor_revision {
    type: string
    sql: ${TABLE}.email_proveedor_revision ;;
  }
  dimension: email_proveedor_solicitante {
    type: string
    sql: ${TABLE}.email_proveedor_solicitante ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_doc {
    type: string
    sql: ${TABLE}.estado_doc ;;
  }
  dimension: factor_id {
    type: string
    sql: ${TABLE}.factor_id ;;
  }
  dimension: fecha_giro {
    type: string
    sql: ${TABLE}.fecha_giro ;;
  }
  dimension: fecha_pago {
    type: string
    sql: ${TABLE}.fecha_pago ;;
  }
  dimension: fecha_revision {
    type: string
    sql: ${TABLE}.fecha_revision ;;
  }
  dimension: fecha_revision_doc {
    type: string
    sql: ${TABLE}.fecha_revision_doc ;;
  }
  dimension: fecha_revision_factor {
    type: string
    sql: ${TABLE}.fecha_revision_factor ;;
  }
  dimension: fecha_revision_proveedor {
    type: string
    sql: ${TABLE}.fecha_revision_proveedor ;;
  }
  dimension_group: fecha_solicitud_alta_detra {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_solicitud_alta_detra ;;
  }
  dimension: fi_admin {
    type: string
    sql: ${TABLE}.fi_admin ;;
  }
  dimension: id_factor_alta {
    type: string
    sql: ${TABLE}.id_factor_alta ;;
  }
  dimension: id_proveedor_alta {
    type: string
    sql: ${TABLE}.id_proveedor_alta ;;
  }
  dimension: iva_admin {
    type: string
    sql: ${TABLE}.iva_admin ;;
  }
  dimension: margen_garantia_porcentaje {
    type: string
    sql: ${TABLE}.margen_garantia_porcentaje ;;
  }
  dimension: metodologia_calculo_vpn {
    type: string
    sql: ${TABLE}.metodologia_calculo_vpn ;;
  }
  dimension: nit_empresa {
    type: string
    sql: ${TABLE}.nit_empresa ;;
  }
  dimension: num_factura {
    type: string
    sql: ${TABLE}.num_factura ;;
  }
  dimension: razon_agente {
    type: string
    sql: ${TABLE}.razon_agente ;;
  }
  dimension: spread {
    type: string
    sql: ${TABLE}.spread ;;
  }
  dimension: suma_comision {
    type: string
    sql: ${TABLE}.suma_comision ;;
  }
  dimension: tasa_descuento {
    type: string
    sql: ${TABLE}.tasa_descuento ;;
  }
  dimension: tasa_descuento_minima {
    type: string
    sql: ${TABLE}.tasa_descuento_minima ;;
  }
  dimension: tasa_variable {
    type: string
    sql: ${TABLE}.tasa_variable ;;
  }
  dimension: tasaeafinal {
    type: string
    sql: ${TABLE}.tasaeafinal ;;
  }
  dimension: tasamv {
    type: string
    sql: ${TABLE}.tasamv ;;
  }
  dimension: tipo_negocio {
    type: string
    sql: ${TABLE}.tipo_negocio ;;
  }
  dimension: tipo_operacion {
    type: string
    sql: ${TABLE}.tipo_operacion ;;
  }
  dimension: usuario_revision {
    type: string
    sql: ${TABLE}.usuario_revision ;;
  }
  dimension: usuario_revision_doc {
    type: string
    sql: ${TABLE}.usuario_revision_doc ;;
  }
  dimension: usuario_revision_factor {
    type: string
    sql: ${TABLE}.usuario_revision_factor ;;
  }
  dimension: valor_financiado {
    type: string
    sql: ${TABLE}.valor_financiado ;;
  }
  dimension: valor_neto {
    type: string
    sql: ${TABLE}.valor_neto ;;
  }
  dimension: valor_pagar {
    type: string
    sql: ${TABLE}.valor_pagar ;;
  }
  dimension: valor_total {
    type: string
    sql: ${TABLE}.valor_total ;;
  }
  dimension: vpn_descuento {
    type: string
    sql: ${TABLE}.vpn_descuento ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
