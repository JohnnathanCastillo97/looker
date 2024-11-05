view: consumidor_documentos_softexpert {
  sql_table_name: bd_ic_cliente.consumidor_documentos_softexpert ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: attributes_ciudad {
    type: string
    sql: ${TABLE}.attributes_CIUDAD ;;
  }
  dimension: attributes_fdd {
    type: string
    sql: ${TABLE}.attributes_FDD ;;
  }
  dimension: attributes_fdr {
    type: string
    sql: ${TABLE}.attributes_FDR ;;
  }
  dimension: attributes_ids {
    type: string
    sql: ${TABLE}.attributes_IDS ;;
  }
  dimension: attributes_ndi {
    type: string
    sql: ${TABLE}.attributes_NDI ;;
  }
  dimension: attributes_nto {
    type: string
    sql: ${TABLE}.attributes_NTO ;;
  }
  dimension: attributes_pai {
    type: string
    sql: ${TABLE}.attributes_PAI ;;
  }
  dimension: category_id {
    type: string
    sql: ${TABLE}.categoryID ;;
  }
  dimension: contenido_ws {
    type: string
    sql: ${TABLE}.contenido_ws ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_documentos {
    type: string
    sql: ${TABLE}.estado_documentos ;;
  }
  dimension: id_consumidor {
    type: number
    sql: ${TABLE}.id_consumidor ;;
  }
  dimension: nombre_doc {
    type: string
    sql: ${TABLE}.nombre_doc ;;
  }
  dimension: seq_doc {
    type: string
    sql: ${TABLE}.seq_doc ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
