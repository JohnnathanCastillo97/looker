view: precalificacion_listas_rectrictivas_accionistas {
  sql_table_name: bd_ic_cliente.precalificacion_listas_rectrictivas_accionistas ;;

  dimension: cod_accionista {
    type: yesno
    sql: ${TABLE}.cod_accionista ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension_group: fecha_listas {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_listas ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_reporte_usuario {
    type: number
    sql: ${TABLE}.id_reporte_usuario ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
  }
}
