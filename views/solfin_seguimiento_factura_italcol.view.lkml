view: solfin_seguimiento_factura_italcol {
  sql_table_name: bd_ic_cliente.solfin_seguimiento_factura_italcol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado_factura {
    type: string
    sql: ${TABLE}.estado_factura ;;
  }
  dimension: fecha_seguimiento {
    type: string
    sql: ${TABLE}.fecha_seguimiento ;;
  }
  dimension: flujo_anterior {
    type: string
    sql: ${TABLE}.flujo_anterior ;;
  }
  dimension: flujo_nuevo {
    type: string
    sql: ${TABLE}.flujo_nuevo ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: nom_seguimiento {
    type: string
    sql: ${TABLE}.nom_seguimiento ;;
  }
  dimension: nom_usuario_seguimiento {
    type: string
    sql: ${TABLE}.nom_usuario_seguimiento ;;
  }
  dimension: usuario_seguimiento {
    type: string
    sql: ${TABLE}.usuario_seguimiento ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
