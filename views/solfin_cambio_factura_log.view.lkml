view: solfin_cambio_factura_log {
  sql_table_name: bd_ic_cliente.solfin_cambio_factura_log ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cambio_asignado {
    type: string
    sql: ${TABLE}.cambio_asignado ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_factura {
    type: string
    sql: ${TABLE}.id_factura ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
