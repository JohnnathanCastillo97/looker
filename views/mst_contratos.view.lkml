view: mst_contratos {
  sql_table_name: bd_ic_cliente.mst_contratos ;;

  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: nombre_contrato {
    type: string
    sql: ${TABLE}.nombre_contrato ;;
  }
  dimension_group: registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registro ;;
  }
  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }
  measure: count {
    type: count
  }
}
