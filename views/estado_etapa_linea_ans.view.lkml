view: estado_etapa_linea_ans {
  sql_table_name: bd_ic_cliente.estado_etapa_linea_ans ;;
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
  dimension: estado_ans {
    type: string
    sql: ${TABLE}.estado_ans ;;
  }
  dimension: estapa_ans {
    type: number
    sql: ${TABLE}.estapa_ans ;;
  }
  dimension: id_linea {
    type: number
    sql: ${TABLE}.id_linea ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
