view: clientes_administracion_funciones_modulos {
  sql_table_name: bd_ic_cliente.clientes_administracion_funciones_modulos ;;
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
  dimension: id_funcion {
    type: number
    sql: ${TABLE}.id_funcion ;;
  }
  dimension: id_modulo {
    type: number
    sql: ${TABLE}.id_modulo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
