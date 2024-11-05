view: contratos_tabla_control {
  sql_table_name: bd_ic_cliente.contratos_tabla_control ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comentario_tabla {
    type: string
    sql: ${TABLE}.comentario_tabla ;;
  }
  dimension: nombre_tabla {
    type: string
    sql: ${TABLE}.nombre_tabla ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
