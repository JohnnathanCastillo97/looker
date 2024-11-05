view: solicitud_listas_restrictivas_pdf_datos_bases_hallazgos {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_pdf_datos_bases_hallazgos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: grupo {
    type: number
    sql: ${TABLE}.grupo ;;
  }
  dimension: id_lista_restrictiva_analisis_detalle {
    type: number
    sql: ${TABLE}.idListaRestrictivaAnalisisDetalle ;;
  }
  dimension: id_lista_restrictiva_pdf_datos_base {
    type: number
    sql: ${TABLE}.idListaRestrictivaPdfDatosBase ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
