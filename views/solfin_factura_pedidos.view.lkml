view: solfin_factura_pedidos {
  sql_table_name: bd_ic_cliente.solfin_factura_pedidos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: concat_fact {
    type: string
    sql: ${TABLE}.concat_fact ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: num_doc_pedido {
    type: string
    sql: ${TABLE}.num_doc_pedido ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
