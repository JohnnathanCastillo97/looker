view: comunicaciones_enviadas_prueba {
  sql_table_name: bd_ic_cliente.comunicaciones_enviadas_prueba ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
