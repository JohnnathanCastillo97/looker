view: anexo_documentos_consumidores {
  sql_table_name: bd_ic_cliente.anexo_documentos_consumidores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anexo_aspectos_logisticos {
    type: string
    sql: ${TABLE}.anexo_aspectos_logisticos ;;
  }
  dimension: anexo_consulta_cr {
    type: string
    sql: ${TABLE}.anexo_consulta_cr ;;
  }
  dimension: anexo_destinatarios_mercancias {
    type: string
    sql: ${TABLE}.anexo_destinatarios_mercancias ;;
  }
  dimension: anexo_fuva {
    type: string
    sql: ${TABLE}.anexo_fuva ;;
  }
  dimension: anexo_garantia {
    type: string
    sql: ${TABLE}.anexo_garantia ;;
  }
  dimension: anexo_identificacion_peps {
    type: string
    sql: ${TABLE}.anexo_identificacion_peps ;;
  }
  dimension: anexo_identificacion_relacionados {
    type: string
    sql: ${TABLE}.anexo_identificacion_relacionados ;;
  }
  dimension: anexo_pagare {
    type: string
    sql: ${TABLE}.anexo_pagare ;;
  }
  dimension: anexo_sagrilaf {
    type: string
    sql: ${TABLE}.anexo_sagrilaf ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_consumidor {
    type: number
    sql: ${TABLE}.id_consumidor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
