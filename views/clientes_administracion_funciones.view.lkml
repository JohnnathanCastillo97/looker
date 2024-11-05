view: clientes_administracion_funciones {
  sql_table_name: bd_ic_cliente.clientes_administracion_funciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: funcion {
    type: string
    sql: ${TABLE}.funcion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
