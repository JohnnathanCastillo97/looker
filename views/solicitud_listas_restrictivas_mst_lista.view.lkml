view: solicitud_listas_restrictivas_mst_lista {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_mst_lista ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_solicitud_listas_restrictivas_mst_tipo_lista {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivasMstTipoLista ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
