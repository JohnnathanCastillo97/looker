view: solfin_negocios {
  sql_table_name: bd_ic_cliente.solfin_negocios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aceptacion_descuento_automatico {
    type: string
    sql: ${TABLE}.aceptacion_descuento_automatico ;;
  }
  dimension: activacion_negocio {
    type: string
    sql: ${TABLE}.activacion_negocio ;;
  }
  dimension: autorizada_pago {
    type: string
    sql: ${TABLE}.autorizada_pago ;;
  }
  dimension: base_x_calculos {
    type: string
    sql: ${TABLE}.base_x_calculos ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: cupo_pagador {
    type: string
    sql: ${TABLE}.cupo_pagador ;;
  }
  dimension: dia_habil_visualizacion_factura {
    type: string
    sql: ${TABLE}.dia_habil_visualizacion_factura ;;
  }
  dimension: dia_semana {
    type: string
    sql: ${TABLE}.dia_semana ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_negocios {
    type: string
    sql: ${TABLE}.estado_negocios ;;
  }
  dimension: fecha_actualizacion {
    type: string
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: fecha_vigencia_negocio {
    type: string
    sql: ${TABLE}.fecha_vigencia_negocio ;;
  }
  dimension: horario_corte_calculo_vpn {
    type: string
    sql: ${TABLE}.horario_corte_calculo_vpn ;;
  }
  dimension: ic_x_factor {
    type: string
    sql: ${TABLE}.ic_x_factor ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_factor {
    type: string
    sql: ${TABLE}.id_factor ;;
  }
  dimension: id_pagador {
    type: string
    sql: ${TABLE}.id_pagador ;;
  }
  dimension: margen_garantia {
    type: string
    sql: ${TABLE}.margen_garantia ;;
  }
  dimension: margen_garantia_porcentaje {
    type: string
    sql: ${TABLE}.margen_garantia_porcentaje ;;
  }
  dimension: metodologia_calculo_vpn {
    type: string
    sql: ${TABLE}.metodologia_calculo_vpn ;;
  }
  dimension: modalidad {
    type: string
    sql: ${TABLE}.modalidad ;;
  }
  dimension: nombre_negocio {
    type: string
    sql: ${TABLE}.nombre_negocio ;;
  }
  dimension: politica_pagos {
    type: string
    sql: ${TABLE}.politica_pagos ;;
  }
  dimension: politica_pagos_dias_del_mes {
    type: string
    sql: ${TABLE}.politica_pagos_dias_del_mes ;;
  }
  dimension: prorroga {
    type: string
    sql: ${TABLE}.prorroga ;;
  }
  dimension: prorroga_tasa {
    type: string
    sql: ${TABLE}.prorroga_tasa ;;
  }
  dimension: spread {
    type: string
    sql: ${TABLE}.spread ;;
  }
  dimension: suma_ea {
    type: string
    sql: ${TABLE}.suma_ea ;;
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
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: vigencia_facturas_descuento {
    type: string
    sql: ${TABLE}.vigencia_facturas_descuento ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
