view: prequalification_technique_companies_ruc_score {
  sql_table_name: bd_ic_cliente.prequalification_technique_companies_ruc_score ;;

  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
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
  dimension: id_certificado {
    type: number
    sql: ${TABLE}.id_certificado ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: puntaje_ruc {
    type: number
    sql: ${TABLE}.puntaje_ruc ;;
  }
  dimension: tipo_certificado {
    type: string
    sql: ${TABLE}.tipo_certificado ;;
  }
  measure: count {
    type: count
  }
}
