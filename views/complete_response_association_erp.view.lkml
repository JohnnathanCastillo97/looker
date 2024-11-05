view: complete_response_association_erp {
  sql_table_name: bd_ic_cliente.complete_response_association_erp ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: company_erp_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_erp_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: erp_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.erp_id ;;
  }
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: society {
    type: string
    sql: ${TABLE}.society ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: suplos_id {
    type: string
    sql: ${TABLE}.suplos_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, company_erps.id, erps.id, erps.name]
  }
}
