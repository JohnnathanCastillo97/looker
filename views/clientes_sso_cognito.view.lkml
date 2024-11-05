view: clientes_sso_cognito {
  sql_table_name: bd_ic_cliente.clientes_sso_cognito ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cliente_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.cliente_id ;;
  }
  dimension: url_login {
    type: string
    sql: ${TABLE}.url_login ;;
  }
  dimension: url_logout {
    type: string
    sql: ${TABLE}.url_logout ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id]
  }
}
