view: tb_precalificacion_linea {
  sql_table_name: bd_ic_cliente.tb_precalificacion_linea ;;
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
  dimension: id_linea {
    type: number
    sql: ${TABLE}.id_linea ;;
  }
  dimension: id_precalificacion {
    type: number
    sql: ${TABLE}.id_precalificacion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
