view: datos_comercial_proveedores {
  sql_table_name: bd_ic_cliente.DATOS_COMERCIAL_PROVEEDORES ;;

  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: modulo {
    type: string
    sql: ${TABLE}.modulo ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: variable {
    type: string
    sql: ${TABLE}.variable ;;
  }
  measure: count {
    type: count
  }
}
