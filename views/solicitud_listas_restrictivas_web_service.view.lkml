view: solicitud_listas_restrictivas_web_service {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_web_service ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaCreacion ;;
  }
  dimension: id_solicitud_listas_restrictivas {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivas ;;
  }
  dimension: id_solicitud_listas_restrictivas_diligenciamiento {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivasDiligenciamiento ;;
  }
  dimension: ws_archivo {
    type: string
    sql: ${TABLE}.wsArchivo ;;
  }
  dimension: ws_archivo_aws {
    type: string
    sql: ${TABLE}.wsArchivoAWS ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
