view: cart_bodies_ocns {
  sql_table_name: bd_ic_cliente.cart_bodies_ocns ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cart_header_id {
    type: string
    sql: ${TABLE}.cart_header_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: deadline {
    type: string
    sql: ${TABLE}.deadline ;;
  }
  dimension: position_id {
    type: string
    sql: ${TABLE}.position_id ;;
  }
  dimension: quantity {
    type: string
    sql: ${TABLE}.quantity ;;
  }
  dimension: sap_position {
    type: string
    sql: ${TABLE}.sap_position ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
