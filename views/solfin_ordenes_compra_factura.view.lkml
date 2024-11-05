view: solfin_ordenes_compra_factura {
  sql_table_name: bd_ic_cliente.solfin_ordenes_compra_factura ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado_fact_oc {
    type: string
    sql: ${TABLE}.estado_fact_oc ;;
  }
  dimension: id_factura {
    type: string
    sql: ${TABLE}.id_factura ;;
  }
  dimension: id_orden_compra {
    type: string
    sql: ${TABLE}.id_orden_compra ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
