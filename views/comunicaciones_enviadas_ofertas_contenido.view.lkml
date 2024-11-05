view: comunicaciones_enviadas_ofertas_contenido {
  sql_table_name: bd_ic_cliente.comunicaciones_enviadas_ofertas_contenido ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contenido {
    type: string
    sql: ${TABLE}.contenido ;;
  }
  dimension: id_enviada_oferta {
    type: number
    sql: ${TABLE}.id_enviada_oferta ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
