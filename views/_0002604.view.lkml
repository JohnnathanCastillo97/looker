view: _0002604 {
  sql_table_name: bd_ic_cliente._0002604 ;;

  dimension: idpaisxx {
    type: number
    sql: ${TABLE}.idpaisxx ;;
  }
  dimension: nompaisx {
    type: string
    sql: ${TABLE}.nompaisx ;;
  }
  measure: count {
    type: count
  }
}
