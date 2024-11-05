view: _0002602 {
  sql_table_name: bd_ic_cliente._0002602 ;;

  dimension: idciudxx {
    type: number
    sql: ${TABLE}.idciudxx ;;
  }
  dimension: iddeptxx {
    type: number
    sql: ${TABLE}.iddeptxx ;;
  }
  dimension: idpaisxx {
    type: number
    sql: ${TABLE}.idpaisxx ;;
  }
  dimension: nomciuxx {
    type: string
    sql: ${TABLE}.nomciuxx ;;
  }
  measure: count {
    type: count
  }
}
