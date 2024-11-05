view: clientes_personalizadold {
  sql_table_name: bd_ic_cliente.CLIENTES_PERSONALIZADOLD ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.ID_CLIENTE ;;
  }
  dimension: nombre_vista {
    type: string
    sql: ${TABLE}.NOMBRE_VISTA ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
