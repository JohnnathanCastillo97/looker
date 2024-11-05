view: ordenes_compras_detalle_oxxo {
  sql_table_name: bd_ic_cliente.ordenes_compras_detalle_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_original {
    type: number
    sql: ${TABLE}.cantidadOriginal ;;
  }
  dimension: cantidad_pendiente {
    type: number
    sql: ${TABLE}.cantidadPendiente ;;
  }
  dimension: cantidad_real {
    type: number
    sql: ${TABLE}.cantidadReal ;;
  }
  dimension: contrato_marco_material_id {
    type: number
    sql: ${TABLE}.contratoMarcoMaterialId ;;
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
  dimension: despacho {
    type: string
    sql: ${TABLE}.despacho ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_general {
    type: string
    sql: ${TABLE}.estadoGeneral ;;
  }
  dimension_group: fecha_finalizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaFinalizacion ;;
  }
  dimension: finalizacion_manual {
    type: string
    sql: ${TABLE}.finalizacionManual ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: orden_compra_id {
    type: number
    sql: ${TABLE}.ordenCompraId ;;
  }
  dimension: pre_orden_compra_detalle_id {
    type: number
    sql: ${TABLE}.preOrdenCompraDetalleId ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
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
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  dimension: valor_cop {
    type: number
    sql: ${TABLE}.valorCop ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}