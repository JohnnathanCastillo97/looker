view: contratos_info_detalle_int {
  sql_table_name: bd_ic_cliente.contratos_info_detalle_int ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contratos_datos_add_int {
    type: number
    sql: ${TABLE}.contratos_datos_add_int ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: datos_int_detalle {
    type: number
    sql: ${TABLE}.datos_int_detalle ;;
  }
  dimension: id_contratos {
    type: number
    sql: ${TABLE}.id_contratos ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
