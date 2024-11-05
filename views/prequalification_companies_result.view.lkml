view: prequalification_companies_result {
  sql_table_name: bd_ic_cliente.prequalification_companies_result ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto_doc_solicitado {
    type: string
    sql: ${TABLE}.adjunto_doc_solicitado ;;
  }
  dimension: camara_comercio {
    type: string
    sql: ${TABLE}.camara_comercio ;;
  }
  dimension: camara_comercio_vigencia {
    type: string
    sql: ${TABLE}.camara_comercio_vigencia ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: codigo_doc_solicitado {
    type: number
    sql: ${TABLE}.codigo_doc_solicitado ;;
  }
  dimension: estado_doc_solicitado {
    type: string
    sql: ${TABLE}.estado_doc_solicitado ;;
  }
  dimension: estado_empresa {
    type: string
    sql: ${TABLE}.estado_empresa ;;
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
  dimension: nombre_doc_solicitado {
    type: string
    sql: ${TABLE}.nombre_doc_solicitado ;;
  }
  dimension: pais_origen {
    type: number
    sql: ${TABLE}.paisOrigen ;;
  }
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  dimension: representante {
    type: string
    sql: ${TABLE}.representante ;;
  }
  dimension: tipopersona {
    type: string
    sql: ${TABLE}.tipopersona ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
