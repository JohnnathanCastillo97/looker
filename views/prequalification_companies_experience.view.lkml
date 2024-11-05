view: prequalification_companies_experience {
  sql_table_name: bd_ic_cliente.prequalification_companies_experience ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividad_cliente {
    type: string
    sql: ${TABLE}.actividadCliente ;;
  }
  dimension: actividad_cliente_extra {
    type: string
    sql: ${TABLE}.actividadClienteExtra ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
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
  dimension: cliente {
    type: string
    sql: ${TABLE}.cliente ;;
  }
  dimension: cod_actividad {
    type: number
    sql: ${TABLE}.cod_actividad ;;
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
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: id_experiencia {
    type: number
    sql: ${TABLE}.id_experiencia ;;
  }
  dimension_group: listas_restrictivas_fecha_verificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.listasRestrictivasFechaVerificacion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: nombre_doc_solicitado {
    type: string
    sql: ${TABLE}.nombre_doc_solicitado ;;
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
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
