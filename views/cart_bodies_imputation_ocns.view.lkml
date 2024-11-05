view: cart_bodies_imputation_ocns {
  sql_table_name: bd_ic_cliente.cart_bodies_imputation_ocns ;;
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
