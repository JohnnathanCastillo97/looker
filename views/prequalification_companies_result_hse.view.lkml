view: prequalification_companies_result_hse {
  sql_table_name: bd_ic_cliente.prequalification_companies_result_hse ;;

  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: anexo_accidentes {
    type: string
    sql: ${TABLE}.anexo_accidentes ;;
  }
  dimension: anexo_afiliacion {
    type: string
    sql: ${TABLE}.anexo_afiliacion ;;
  }
  dimension_group: anio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.anio ;;
  }
  dimension: autoevaluacion_sgsst {
    type: string
    sql: ${TABLE}.autoevaluacion_sgsst ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_arl {
    type: number
    sql: ${TABLE}.id_arl ;;
  }
  dimension: id_certificado {
    type: number
    sql: ${TABLE}.id_certificado ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: puntaje_arl {
    type: number
    sql: ${TABLE}.puntaje_arl ;;
  }
  dimension: puntaje_arl_valudacion {
    type: string
    sql: ${TABLE}.puntaje_arl_valudacion ;;
  }
  dimension: puntaje_ruc {
    type: number
    sql: ${TABLE}.puntaje_ruc ;;
  }
  dimension: puntaje_ruc_valudacion {
    type: string
    sql: ${TABLE}.puntaje_ruc_valudacion ;;
  }
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  dimension: tipo_certificado {
    type: number
    sql: ${TABLE}.tipo_certificado ;;
  }
  measure: count {
    type: count
  }
}
