view: metro_doc_presupuestales_sap {
  sql_table_name: bd_ic_cliente.metro_doc_presupuestales_sap ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: doc_pres {
    type: number
    sql: ${TABLE}.DocPres ;;
  }
  dimension: doc_ref {
    type: string
    sql: ${TABLE}.DocRef ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: liberado {
    type: string
    sql: ${TABLE}.Liberado ;;
  }
  dimension: moneda_doc {
    type: string
    sql: ${TABLE}.MonedaDoc ;;
  }
  dimension: moneda_local {
    type: string
    sql: ${TABLE}.MonedaLocal ;;
  }
  dimension: suma_abiertos_md {
    type: string
    sql: ${TABLE}.SumaAbiertosMd ;;
  }
  dimension: suma_abiertos_ml {
    type: string
    sql: ${TABLE}.SumaAbiertosMl ;;
  }
  dimension: suma_reducidos_md {
    type: string
    sql: ${TABLE}.SumaReducidosMd ;;
  }
  dimension: suma_reducidos_ml {
    type: string
    sql: ${TABLE}.SumaReducidosMl ;;
  }
  dimension: suma_total_md {
    type: string
    sql: ${TABLE}.SumaTotalMd ;;
  }
  dimension: suma_total_ml {
    type: string
    sql: ${TABLE}.SumaTotalMl ;;
  }
  dimension: texto_cab {
    type: string
    sql: ${TABLE}.TextoCab ;;
  }
  dimension: tipo {
    type: number
    sql: ${TABLE}.Tipo ;;
  }
  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
