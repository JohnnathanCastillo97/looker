view: tokens_clientes {
  sql_table_name: bd_ic_cliente.tokens_clientes ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }
  dimension: usuario {
    type: number
    sql: ${TABLE}.usuario ;;
  }
  dimension: vista {
    type: string
    sql: ${TABLE}.vista ;;
  }
  measure: count {
    type: count
  }
}
