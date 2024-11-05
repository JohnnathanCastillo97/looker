view: clientes_listas_restrictivas {
  sql_table_name: bd_ic_cliente.clientes_listas_restrictivas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aplica_validacion_automaticas {
    type: string
    sql: ${TABLE}.aplica_validacion_automaticas ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: frecuencia {
    type: number
    sql: ${TABLE}.frecuencia ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
