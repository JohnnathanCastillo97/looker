view: clientes_administracion_acceso_perfiles {
  sql_table_name: bd_ic_cliente.clientes_administracion_acceso_perfiles ;;
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
  dimension: id_perfil {
    type: number
    sql: ${TABLE}.id_perfil ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
