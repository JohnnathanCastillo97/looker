view: solfin_compe_reten {
  sql_table_name: bd_ic_cliente.solfin_compe_reten ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: importe_compensacion_loc {
    type: number
    sql: ${TABLE}.importe_compensacion_loc ;;
  }
  dimension: importe_retencion_loc {
    type: number
    sql: ${TABLE}.importe_retencion_loc ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
