view: destinatarios_mensajeria_italcol {
  sql_table_name: bd_ic_cliente.destinatarios_mensajeria_italcol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: destinatario_id {
    type: string
    sql: ${TABLE}.destinatario_id ;;
  }
  dimension: mensaje_id {
    type: number
    sql: ${TABLE}.mensaje_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
