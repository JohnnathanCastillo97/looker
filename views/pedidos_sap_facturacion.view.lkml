view: pedidos_sap_facturacion {
  sql_table_name: bd_ic_cliente.pedidos_sap_facturacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidadfact {
    type: number
    sql: ${TABLE}.cantidadfact ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: factura {
    type: string
    sql: ${TABLE}.factura ;;
  }
  dimension_group: fechabase {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechabase ;;
  }
  dimension: id_posicion {
    type: number
    sql: ${TABLE}.id_posicion ;;
  }
  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }
  dimension: monedacon {
    type: string
    sql: ${TABLE}.monedacon ;;
  }
  dimension: monedafact {
    type: string
    sql: ${TABLE}.monedafact ;;
  }
  dimension: montoconiva {
    type: number
    sql: ${TABLE}.montoconiva ;;
  }
  dimension: montosinivaf {
    type: number
    sql: ${TABLE}.montosinivaf ;;
  }
  dimension: montosinivap {
    type: number
    sql: ${TABLE}.montosinivap ;;
  }
  dimension: pedido {
    type: string
    sql: ${TABLE}.pedido ;;
  }
  dimension: posfactura {
    type: string
    sql: ${TABLE}.posfactura ;;
  }
  dimension: posicion {
    type: string
    sql: ${TABLE}.posicion ;;
  }
  dimension: tipocambio {
    type: string
    sql: ${TABLE}.tipocambio ;;
  }
  dimension: unidad {
    type: string
    sql: ${TABLE}.unidad ;;
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
