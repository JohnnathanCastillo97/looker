view: pedidos_sap_movimientos {
  sql_table_name: bd_ic_cliente.pedidos_sap_movimientos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: cantidadbloq {
    type: number
    sql: ${TABLE}.cantidadbloq ;;
  }
  dimension: clasemov {
    type: string
    sql: ${TABLE}.clasemov ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descclmov {
    type: string
    sql: ${TABLE}.descclmov ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: id_posicion {
    type: number
    sql: ${TABLE}.id_posicion ;;
  }
  dimension: pedido {
    type: string
    sql: ${TABLE}.pedido ;;
  }
  dimension: posicion {
    type: string
    sql: ${TABLE}.posicion ;;
  }
  dimension: posiciond {
    type: string
    sql: ${TABLE}.posiciond ;;
  }
  dimension: tipomov {
    type: string
    sql: ${TABLE}.tipomov ;;
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
