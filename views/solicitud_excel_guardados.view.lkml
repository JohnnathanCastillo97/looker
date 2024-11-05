view: solicitud_excel_guardados {
  sql_table_name: bd_ic_cliente.solicitud_excel_guardados ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: consecutivo {
    type: number
    sql: ${TABLE}.consecutivo ;;
  }
  dimension: excel {
    type: string
    sql: ${TABLE}.excel ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.idCliente ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
