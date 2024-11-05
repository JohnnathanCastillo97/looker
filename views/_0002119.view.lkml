view: _0002119 {
  sql_table_name: bd_ic_cliente._0002119 ;;

  dimension: polidxxx {
    type: number
    sql: ${TABLE}.polidxxx ;;
  }
  dimension: tippolxx {
    type: string
    sql: ${TABLE}.tippolxx ;;
  }
  measure: count {
    type: count
  }
}
