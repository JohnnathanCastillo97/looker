view: solicitud_listas_control {
  sql_table_name: bd_ic_cliente.solicitud_listas_control ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_solicitud_listas_restrictivas_diligenciamiento {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivasDiligenciamiento ;;
  }
  dimension: modo {
    type: string
    sql: ${TABLE}.modo ;;
  }
  dimension: modo_archivo {
    type: string
    sql: ${TABLE}.modoArchivo ;;
  }
  dimension: modo_archivo_aws {
    type: string
    sql: ${TABLE}.modoArchivoAWS ;;
  }
  dimension: modo_descripcion {
    type: string
    sql: ${TABLE}.modoDescripcion ;;
  }
  dimension: modo_hallazgos {
    type: string
    sql: ${TABLE}.modoHallazgos ;;
  }
  dimension: modo_visualizar {
    type: string
    sql: ${TABLE}.modoVisualizar ;;
  }
  dimension: otro_texto {
    type: string
    sql: ${TABLE}.otroTexto ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
