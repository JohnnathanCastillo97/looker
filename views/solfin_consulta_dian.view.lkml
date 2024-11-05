view: solfin_consulta_dian {
  sql_table_name: bd_ic_cliente.solfin_consulta_dian ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: eventos_dian {
    type: string
    sql: ${TABLE}.eventos_dian ;;
  }
  dimension: fecha_consulta {
    type: string
    sql: ${TABLE}.fecha_consulta ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: mensaje {
    type: string
    sql: ${TABLE}.mensaje ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: validez_factura {
    type: string
    sql: ${TABLE}.validez_factura ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
