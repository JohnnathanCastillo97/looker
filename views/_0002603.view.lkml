view: _0002603 {
  sql_table_name: bd_ic_cliente._0002603 ;;

  dimension: deptoxxx {
    type: string
    sql: ${TABLE}.deptoxxx ;;
  }
  dimension: iddeptxx {
    type: number
    sql: ${TABLE}.iddeptxx ;;
  }
  measure: count {
    type: count
  }
}
