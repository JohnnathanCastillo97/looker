view: catalog_positions_ocns {
  sql_table_name: bd_ic_cliente.catalog_positions_ocns ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: catalogue_id {
    type: string
    sql: ${TABLE}.catalogue_id ;;
  }
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
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
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: erase_indicator {
    type: string
    sql: ${TABLE}.erase_indicator ;;
  }
  dimension: item_group {
    type: string
    sql: ${TABLE}.item_group ;;
  }
  dimension: long_description {
    type: string
    sql: ${TABLE}.long_description ;;
  }
  dimension: part_number {
    type: string
    sql: ${TABLE}.part_number ;;
  }
  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: um {
    type: string
    sql: ${TABLE}.um ;;
  }
  dimension: unit_price {
    type: string
    sql: ${TABLE}.unit_price ;;
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
