view: prequalification_companies_hse_sgsst {
  sql_table_name: bd_ic_cliente.prequalification_companies_hse_sgsst ;;

  dimension_group: anio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
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
