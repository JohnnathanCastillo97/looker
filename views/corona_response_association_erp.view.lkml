view: corona_response_association_erp {
  sql_table_name: bd_ic_cliente.corona_response_association_erp ;;
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
  dimension: erp_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.erp_id ;;
  }
  dimension: integration_type {
    type: string
    sql: ${TABLE}.integration_type ;;
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
  dimension: validation_country_id {
    type: number
    sql: ${TABLE}.validation_country_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, erps.id, erps.name]
  }
}
