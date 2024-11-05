view: mst_ipc {
  sql_table_name: bd_ic_cliente.mst_ipc ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id]
  }
}
