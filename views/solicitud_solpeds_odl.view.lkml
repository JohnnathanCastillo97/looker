view: solicitud_solpeds_odl {
  sql_table_name: bd_ic_cliente.solicitud_solpeds_odl ;;
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
  dimension: encargo_fiduciario {
    type: string
    sql: ${TABLE}.EncargoFiduciario ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: moneda_solped {
    type: string
    sql: ${TABLE}.MonedaSolped ;;
  }
  dimension: moneda_solped_enlazada {
    type: string
    sql: ${TABLE}.MonedaSolpedEnlazada ;;
  }
  dimension: solicitud_pedido_sap {
    type: string
    sql: ${TABLE}.SolicitudPedidoSAP ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor_solped {
    type: string
    sql: ${TABLE}.ValorSolped ;;
  }
  dimension: valor_solped_enlazada {
    type: string
    sql: ${TABLE}.ValorSolpedEnlazada ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
