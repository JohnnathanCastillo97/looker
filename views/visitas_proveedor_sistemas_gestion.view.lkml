view: visitas_proveedor_sistemas_gestion {
  sql_table_name: bd_ic_cliente.visitas_proveedor_sistemas_gestion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_sistema_gestion {
    type: number
    sql: ${TABLE}.id_sistema_gestion ;;
  }
  dimension: id_visita {
    type: number
    sql: ${TABLE}.id_visita ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
