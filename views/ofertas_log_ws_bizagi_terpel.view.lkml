view: ofertas_log_ws_bizagi_terpel {
  sql_table_name: bd_ic_cliente.ofertas_log_ws_bizagi_terpel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_integracion {
    type: string
    sql: ${TABLE}.cod_integracion ;;
  }
  dimension: contenido {
    type: string
    sql: ${TABLE}.contenido ;;
  }
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  dimension_group: fecha_ejecucion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ejecucion ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
