view: oferta_cuadro_economico_comparativo {
  sql_table_name: bd_ic_cliente.oferta_cuadro_economico_comparativo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: oferta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oferta_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ofertas.id]
  }
}
