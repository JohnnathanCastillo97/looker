view: mst_sistemas_gestion {
  sql_table_name: bd_ic_cliente.mst_sistemas_gestion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: sistema {
    type: string
    sql: ${TABLE}.sistema ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
