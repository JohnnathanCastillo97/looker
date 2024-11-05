view: clientes_administracion_perfiles_funciones {
  sql_table_name: bd_ic_cliente.clientes_administracion_perfiles_funciones ;;
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
  dimension: id_perfil {
    type: number
    sql: ${TABLE}.id_perfil ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
