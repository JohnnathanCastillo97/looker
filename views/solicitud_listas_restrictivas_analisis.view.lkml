view: solicitud_listas_restrictivas_analisis {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_analisis ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto_archivo {
    type: string
    sql: ${TABLE}.adjuntoArchivo ;;
  }
  dimension: adjunto_archivo_aws {
    type: string
    sql: ${TABLE}.adjuntoArchivoAWS ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: existe_hallazgo {
    type: string
    sql: ${TABLE}.existeHallazgo ;;
  }
  dimension: id_base {
    type: string
    sql: ${TABLE}.idBase ;;
  }
  dimension: id_solicitud_listas_restrictivas_diligenciamiento {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivasDiligenciamiento ;;
  }
  dimension: id_solicitud_listas_restrictivas_mst_lista {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivasMstLista ;;
  }
  dimension: id_solicitud_listas_restrictivas_mst_tipo_lista {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivasMstTipoLista ;;
  }
  dimension: is_api {
    type: string
    sql: ${TABLE}.isApi ;;
  }
  dimension: texto {
    type: string
    sql: ${TABLE}.texto ;;
  }
  dimension: texto2 {
    type: string
    sql: ${TABLE}.texto2 ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
