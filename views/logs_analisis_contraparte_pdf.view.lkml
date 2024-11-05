view: logs_analisis_contraparte_pdf {
  sql_table_name: bd_ic_cliente.logs_analisis_contraparte_pdf ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_solicitud_restrictivas {
    type: string
    sql: ${TABLE}.id_solicitud_restrictivas ;;
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
