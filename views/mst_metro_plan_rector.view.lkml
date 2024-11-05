view: mst_metro_plan_rector {
  sql_table_name: bd_ic_cliente.mst_metro_plan_rector ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion_plan_rector {
    type: string
    sql: ${TABLE}.accion_plan_rector ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: plan_rector {
    type: string
    sql: ${TABLE}.plan_rector ;;
  }
  dimension: sig_plan_rector {
    type: string
    sql: ${TABLE}.sig_plan_rector ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
