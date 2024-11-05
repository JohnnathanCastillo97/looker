view: client_api {
  sql_table_name: bd_ic_cliente.client_api ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: client_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.client_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: expiration_hours_token {
    type: number
    sql: ${TABLE}.expiration_hours_token ;;
  }
  dimension: secret_key {
    type: string
    sql: ${TABLE}.secret_key ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clients.id, clients.name]
  }
}
