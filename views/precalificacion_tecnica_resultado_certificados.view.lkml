view: precalificacion_tecnica_resultado_certificados {
  sql_table_name: bd_ic_cliente.precalificacion_tecnica_resultado_certificados ;;

  dimension: anexo {
    type: string
    sql: ${TABLE}.anexo ;;
  }
  dimension: cod_certificacion {
    type: number
    sql: ${TABLE}.cod_certificacion ;;
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
  dimension: id_resultado_certificados {
    type: number
    sql: ${TABLE}.id_resultado_certificados ;;
  }
  dimension: tipo_certificado {
    type: number
    sql: ${TABLE}.tipo_certificado ;;
  }
  dimension: valido {
    type: string
    sql: ${TABLE}.valido ;;
  }
  measure: count {
    type: count
  }
}
