view: clientes_administracion_perfiles {
  sql_table_name: bd_ic_cliente.clientes_administracion_perfiles ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: nombre_perfil {
    type: string
    sql: ${TABLE}.nombre_perfil ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
