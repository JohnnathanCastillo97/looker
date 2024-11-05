view: solpeds_ocns {
  sql_table_name: bd_ic_cliente.solpeds_ocns ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cart_body_id {
    type: string
    sql: ${TABLE}.cart_body_id ;;
  }
  dimension: co_order {
    type: string
    sql: ${TABLE}.co_order ;;
  }
  dimension: cost_center_id {
    type: string
    sql: ${TABLE}.cost_center_id ;;
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
  dimension: document_type {
    type: string
    sql: ${TABLE}.document_type ;;
  }
  dimension: holder_id {
    type: string
    sql: ${TABLE}.holder_id ;;
  }
  dimension: imputation_type_id {
    type: string
    sql: ${TABLE}.imputation_type_id ;;
  }
  dimension: logistics_center_id {
    type: string
    sql: ${TABLE}.logistics_center_id ;;
  }
  dimension: pep {
    type: string
    sql: ${TABLE}.pep ;;
  }
  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }
  dimension: quantity {
    type: string
    sql: ${TABLE}.quantity ;;
  }
  dimension: solped_number {
    type: string
    sql: ${TABLE}.solped_number ;;
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
