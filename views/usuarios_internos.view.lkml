view: usuarios_internos {
  sql_table_name: bd_ic_cliente.usuarios_internos ;;
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
  dimension: id_perfil {
    type: number
    sql: ${TABLE}.id_perfil ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: llave {
    type: string
    sql: ${TABLE}.llave ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
