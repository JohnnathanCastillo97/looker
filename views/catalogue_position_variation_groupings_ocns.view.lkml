view: catalogue_position_variation_groupings_ocns {
  sql_table_name: bd_ic_cliente.catalogue_position_variation_groupings_ocns ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: catalogue_position_id {
    type: string
    sql: ${TABLE}.catalogue_position_id ;;
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
  dimension: variation_group_id {
    type: string
    sql: ${TABLE}.variation_group_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
