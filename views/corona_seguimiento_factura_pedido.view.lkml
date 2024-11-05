view: corona_seguimiento_factura_pedido {
  sql_table_name: bd_ic_cliente.corona_seguimiento_factura_pedido ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bukrs {
    type: string
    sql: ${TABLE}.Bukrs ;;
  }
  dimension: ebeln {
    type: string
    sql: ${TABLE}.Ebeln ;;
  }
  dimension: invoice_date {
    type: string
    sql: ${TABLE}.Invoice_date ;;
  }
  dimension: invoice_id {
    type: string
    sql: ${TABLE}.Invoice_Id ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.Lifnr ;;
  }
  dimension: stlect {
    type: number
    sql: ${TABLE}.stlect ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
