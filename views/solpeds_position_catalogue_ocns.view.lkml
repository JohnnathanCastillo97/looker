view: solpeds_position_catalogue_ocns {
  sql_table_name: bd_ic_cliente.solpeds_position_catalogue_ocns ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actual_amount {
    type: string
    sql: ${TABLE}.actual_amount ;;
  }
  dimension: amount_available {
    type: string
    sql: ${TABLE}.amount_available ;;
  }
  dimension: budgeted_amount {
    type: string
    sql: ${TABLE}.budgeted_amount ;;
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
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: leadtime {
    type: string
    sql: ${TABLE}.leadtime ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: observations {
    type: string
    sql: ${TABLE}.observations ;;
  }
  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
  }
  dimension: purchasing_group {
    type: string
    sql: ${TABLE}.purchasing_group ;;
  }
  dimension: purchasing_organization {
    type: string
    sql: ${TABLE}.purchasing_organization ;;
  }
  dimension: sequential {
    type: number
    sql: ${TABLE}.sequential ;;
  }
  dimension: solped_position_id {
    type: string
    sql: ${TABLE}.solped_position_id ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
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
    drill_fields: [id, name]
  }
}
