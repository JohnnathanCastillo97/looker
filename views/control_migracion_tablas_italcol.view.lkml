view: control_migracion_tablas_italcol {
  sql_table_name: bd_ic_cliente.control_migracion_tablas_italcol ;;

  dimension: ejecucion {
    type: string
    sql: ${TABLE}.ejecucion ;;
  }
  dimension_group: fecha_ingreso {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ingreso ;;
  }
  dimension: id_control {
    type: number
    sql: ${TABLE}.id_control ;;
  }
  dimension: id_tablas {
    type: number
    sql: ${TABLE}.id_tablas ;;
  }
  dimension: tabla {
    type: string
    sql: ${TABLE}.tabla ;;
  }
  measure: count {
    type: count
  }
}
