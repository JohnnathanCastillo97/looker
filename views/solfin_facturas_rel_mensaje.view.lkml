view: solfin_facturas_rel_mensaje {
  sql_table_name: bd_ic_cliente.solfin_facturas_rel_mensaje ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: fecha_emision {
    type: string
    sql: ${TABLE}.fecha_emision ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: fecha_vencimiento {
    type: string
    sql: ${TABLE}.fecha_vencimiento ;;
  }
  dimension: id_mensaje {
    type: number
    sql: ${TABLE}.id_mensaje ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: num_factura {
    type: string
    sql: ${TABLE}.num_factura ;;
  }
  dimension: pagador {
    type: string
    sql: ${TABLE}.pagador ;;
  }
  dimension: plantilla_factura {
    type: string
    sql: ${TABLE}.plantilla_factura ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
