view: solicitud_listas_restrictivas_analisis_detalles {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_analisis_detalles ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: grupo {
    type: number
    sql: ${TABLE}.grupo ;;
  }
  dimension: id_solicitud_listas_restrictivas_analisis {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivasAnalisis ;;
  }
  dimension: texto {
    type: string
    sql: ${TABLE}.texto ;;
  }
  dimension: texto2 {
    type: string
    sql: ${TABLE}.texto2 ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
