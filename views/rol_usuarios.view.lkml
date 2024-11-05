view: rol_usuarios {
  sql_table_name: bd_ic_cliente.rol_usuarios ;;

  dimension: id_rol {
    type: number
    sql: ${TABLE}.id_rol ;;
  }
  dimension: rol_usuario {
    type: string
    sql: ${TABLE}.rol_usuario ;;
  }
  measure: count {
    type: count
  }
}
