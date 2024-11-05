view: usuarios_sap_cliente {
  sql_table_name: bd_ic_cliente.usuarios_sap_cliente ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cliente_id ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id, usuarios.username, usuarios.id, clientes.id]
  }
}
