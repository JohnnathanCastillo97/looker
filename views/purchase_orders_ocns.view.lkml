view: purchase_orders_ocns {
  sql_table_name: bd_ic_cliente.purchase_orders_ocns ;;
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
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: created_type {
    type: string
    sql: ${TABLE}.created_type ;;
  }
  dimension: deadline {
    type: string
    sql: ${TABLE}.deadline ;;
  }
  dimension: delivery_place {
    type: string
    sql: ${TABLE}.delivery_place ;;
  }
  dimension: holder_id {
    type: string
    sql: ${TABLE}.holder_id ;;
  }
  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }
  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
  }
  dimension: purchase_order_number {
    type: string
    sql: ${TABLE}.purchase_order_number ;;
  }
  dimension: solped_number {
    type: string
    sql: ${TABLE}.solped_number ;;
  }
  dimension: solped_position {
    type: string
    sql: ${TABLE}.solped_position ;;
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
