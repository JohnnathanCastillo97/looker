view: expediting_desempeno {
  sql_table_name: bd_ic_cliente.expediting_desempeno ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: burden {
    type: number
    sql: ${TABLE}.burden ;;
  }
  dimension: create_user {
    type: number
    sql: ${TABLE}.create_user ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_expediting {
    type: number
    sql: ${TABLE}.id_expediting ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: otif {
    type: number
    sql: ${TABLE}.otif ;;
  }
  dimension: update_user {
    type: number
    sql: ${TABLE}.update_user ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
