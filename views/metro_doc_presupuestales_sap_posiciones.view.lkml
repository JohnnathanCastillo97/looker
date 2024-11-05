view: metro_doc_presupuestales_sap_posiciones {
  sql_table_name: bd_ic_cliente.metro_doc_presupuestales_sap_posiciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cgestor {
    type: number
    sql: ${TABLE}.CGestor ;;
  }
  dimension: doc_pres {
    type: number
    sql: ${TABLE}.DocPres ;;
  }
  dimension: fondo {
    type: string
    sql: ${TABLE}.Fondo ;;
  }
  dimension: monto_abierto_md {
    type: number
    sql: ${TABLE}.MontoAbiertoMd ;;
  }
  dimension: monto_abierto_ml {
    type: number
    sql: ${TABLE}.MontoAbiertoMl ;;
  }
  dimension: monto_reducido_md {
    type: number
    sql: ${TABLE}.MontoReducidoMd ;;
  }
  dimension: monto_reducido_ml {
    type: number
    sql: ${TABLE}.MontoReducidoMl ;;
  }
  dimension: monto_total_md {
    type: number
    sql: ${TABLE}.MontoTotalMd ;;
  }
  dimension: monto_total_ml {
    type: number
    sql: ${TABLE}.MontoTotalMl ;;
  }
  dimension: pos_doc_pres {
    type: string
    sql: ${TABLE}.PosDocPres ;;
  }
  dimension: pos_pres {
    type: string
    sql: ${TABLE}.PosPres ;;
  }
  dimension: texto_pos {
    type: string
    sql: ${TABLE}.TextoPos ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
