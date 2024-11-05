view: mst_wacc {
  sql_table_name: bd_ic_cliente.mst_wacc ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cliente_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id, usuarios.username, usuarios.id]
  }
}