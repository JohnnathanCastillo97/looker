view: logs_analisis_contraparte_excel {
  sql_table_name: bd_ic_cliente.logs_analisis_contraparte_excel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: consecutivo {
    type: number
    sql: ${TABLE}.consecutivo ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.idCliente ;;
  }
  dimension: id_solicitud_lista_restrictiva {
    type: number
    sql: ${TABLE}.idSolicitudListaRestrictiva ;;
  }
  dimension: mensaje {
    type: string
    sql: ${TABLE}.mensaje ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
