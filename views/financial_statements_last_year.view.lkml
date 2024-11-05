view: financial_statements_last_year {
  sql_table_name: bd_ic_cliente.financial_statements_last_year ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.anio ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  measure: count {
    type: count
  }
}
