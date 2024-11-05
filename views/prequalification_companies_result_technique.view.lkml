view: prequalification_companies_result_technique {
  sql_table_name: bd_ic_cliente.prequalification_companies_result_technique ;;

  dimension: camara_comercio {
    type: string
    sql: ${TABLE}.camara_comercio ;;
  }
  dimension: camara_comercio_vigencia {
    type: string
    sql: ${TABLE}.camara_comercio_vigencia ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: experiencias {
    type: string
    sql: ${TABLE}.experiencias ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension_group: listas_restrictivas_fecha_verificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.listasRestrictivasFechaVerificacion ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  dimension: representante_legal {
    type: string
    sql: ${TABLE}.representante_legal ;;
  }
  dimension: tipopersona {
    type: string
    sql: ${TABLE}.tipopersona ;;
  }
  measure: count {
    type: count
  }
}
