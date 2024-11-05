view: datos_clientes_power_bi {
  sql_table_name: bd_ic_cliente.Datos_Clientes_PowerBI ;;

  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: modulo {
    type: string
    sql: ${TABLE}.Modulo ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: variable {
    type: string
    sql: ${TABLE}.Variable ;;
  }
  measure: count {
    type: count
  }
}
