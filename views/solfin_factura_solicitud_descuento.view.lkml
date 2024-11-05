view: solfin_factura_solicitud_descuento {
  sql_table_name: bd_ic_cliente.solfin_factura_solicitud_descuento ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: comentario_validacion_solicitud {
    type: string
    sql: ${TABLE}.comentario_validacion_solicitud ;;
  }
  dimension: estado_descuento {
    type: string
    sql: ${TABLE}.estado_descuento ;;
  }
  dimension: fecha_creacion_solicitud {
    type: string
    sql: ${TABLE}.fecha_creacion_solicitud ;;
  }
  dimension: fecha_validacion_solicitud {
    type: string
    sql: ${TABLE}.fecha_validacion_solicitud ;;
  }
  dimension: id_factura {
    type: string
    sql: ${TABLE}.id_factura ;;
  }
  dimension: id_pagador {
    type: string
    sql: ${TABLE}.id_pagador ;;
  }
  dimension: tipo_descuento {
    type: string
    sql: ${TABLE}.tipo_descuento ;;
  }
  dimension: usuario_creador_solicitud {
    type: string
    sql: ${TABLE}.usuario_creador_solicitud ;;
  }
  dimension: usuario_validacion_solicitud {
    type: string
    sql: ${TABLE}.usuario_validacion_solicitud ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
