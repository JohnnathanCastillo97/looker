view: zmold_catalogos_asociacion_adjuntos_compras {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_asociacion_adjuntos_compras ;;

  dimension: cod_adjunto {
    type: number
    sql: ${TABLE}.cod_adjunto ;;
  }
  dimension: cod_grupo_compra {
    type: number
    sql: ${TABLE}.cod_grupo_compra ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  measure: count {
    type: count
  }
}
