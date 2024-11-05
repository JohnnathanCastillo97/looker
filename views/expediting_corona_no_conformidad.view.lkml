view: expediting_corona_no_conformidad {
  sql_table_name: bd_ic_cliente.expediting_corona_no_conformidad ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: create_user {
    type: number
    sql: ${TABLE}.create_user ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_no_conformidad {
    type: string
    sql: ${TABLE}.estado_no_conformidad ;;
  }
  dimension_group: fecha_esperada {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_esperada ;;
  }
  dimension: id_expediting {
    type: number
    sql: ${TABLE}.id_expediting ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: pedidos_dev {
    type: string
    sql: ${TABLE}.pedidos_dev ;;
  }
  dimension: update_user {
    type: number
    sql: ${TABLE}.update_user ;;
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
