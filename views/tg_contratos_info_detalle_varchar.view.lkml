view: tg_contratos_info_detalle_varchar {
  sql_table_name: bd_ic_cliente.tg_contratos_info_detalle_varchar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }
  dimension: contratos_datos_add_varchar {
    type: string
    sql: ${TABLE}.contratos_datos_add_varchar ;;
  }
  dimension: datos_varchar_detalle {
    type: string
    sql: ${TABLE}.datos_varchar_detalle ;;
  }
  dimension: id_contratos {
    type: number
    sql: ${TABLE}.id_contratos ;;
  }
  dimension: log_id {
    type: number
    sql: ${TABLE}.log_id ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
