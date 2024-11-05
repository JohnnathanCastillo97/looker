view: seguimiento_detalles {
  sql_table_name: bd_ic_cliente.seguimiento_detalles ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: registro_antes {
    type: string
    sql: ${TABLE}.registro_antes ;;
  }
  dimension: registro_despues {
    type: string
    sql: ${TABLE}.registro_despues ;;
  }
  dimension: seguimiento_id {
    type: number
    sql: ${TABLE}.seguimiento_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
