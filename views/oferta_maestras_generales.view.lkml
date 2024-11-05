view: oferta_maestras_generales {
  sql_table_name: bd_ic_cliente.oferta_maestras_generales ;;

  dimension: cod_maestra {
    type: number
    sql: ${TABLE}.cod_maestra ;;
  }
  dimension: cod_oferta {
    type: number
    sql: ${TABLE}.cod_oferta ;;
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
  dimension: id_maestra {
    type: number
    sql: ${TABLE}.id_maestra ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
  }
}
