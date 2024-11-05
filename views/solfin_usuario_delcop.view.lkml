view: solfin_usuario_delcop {
  sql_table_name: bd_ic_cliente.solfin_usuario_delcop ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user_name]
  }
}
