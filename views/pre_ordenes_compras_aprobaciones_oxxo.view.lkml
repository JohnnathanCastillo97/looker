view: pre_ordenes_compras_aprobaciones_oxxo {
  sql_table_name: bd_ic_cliente.pre_ordenes_compras_aprobaciones_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contrato_marco_id {
    type: number
    sql: ${TABLE}.contratoMarcoId ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: string
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: es_historico {
    type: string
    sql: ${TABLE}.esHistorico ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: extras_json {
    type: string
    sql: ${TABLE}.extrasJson ;;
  }
  dimension: general_catalogo_flujo_aprobacion_id {
    type: number
    sql: ${TABLE}.generalCatalogoFlujoAprobacionId ;;
  }
  dimension: identificador {
    type: string
    sql: ${TABLE}.identificador ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: pre_orden_compra_id {
    type: number
    sql: ${TABLE}.preOrdenCompraId ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
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
