view: solfin_gr_factura {
  sql_table_name: bd_ic_cliente.solfin_gr_factura ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado_fact_gr {
    type: string
    sql: ${TABLE}.estado_fact_gr ;;
  }
  dimension: id_factura {
    type: string
    sql: ${TABLE}.id_factura ;;
  }
  dimension: num_gr {
    type: string
    sql: ${TABLE}.num_gr ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
