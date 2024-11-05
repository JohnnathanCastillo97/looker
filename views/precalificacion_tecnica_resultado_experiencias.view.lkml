view: precalificacion_tecnica_resultado_experiencias {
  sql_table_name: bd_ic_cliente.precalificacion_tecnica_resultado_experiencias ;;

  dimension: anexo {
    type: string
    sql: ${TABLE}.anexo ;;
  }
  dimension: cliente {
    type: string
    sql: ${TABLE}.cliente ;;
  }
  dimension: cod_experiencia {
    type: number
    sql: ${TABLE}.cod_experiencia ;;
  }
  dimension: cod_resultado {
    type: number
    sql: ${TABLE}.cod_resultado ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension: id_resultado_experiencia {
    type: number
    sql: ${TABLE}.id_resultado_experiencia ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: valido {
    type: string
    sql: ${TABLE}.valido ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
  }
}
