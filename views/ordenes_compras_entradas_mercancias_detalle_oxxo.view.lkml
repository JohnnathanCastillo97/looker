view: ordenes_compras_entradas_mercancias_detalle_oxxo {
  sql_table_name: bd_ic_cliente.ordenes_compras_entradas_mercancias_detalle_oxxo ;;
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
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fila {
    type: string
    sql: ${TABLE}.fila ;;
  }
  dimension: finalizacion_manual {
    type: string
    sql: ${TABLE}.finalizacionManual ;;
  }
  dimension: nombre_lote {
    type: string
    sql: ${TABLE}.nombreLote ;;
  }
  dimension: nombre_ubicacion {
    type: string
    sql: ${TABLE}.nombreUbicacion ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: orden_compra_detalle_id {
    type: number
    sql: ${TABLE}.ordenCompraDetalleId ;;
  }
  dimension: orden_compra_entrada_mercancia_id {
    type: number
    sql: ${TABLE}.ordenCompraEntradaMercanciaId ;;
  }
  dimension: placa_activo_fijo {
    type: string
    sql: ${TABLE}.placaActivoFijo ;;
  }
  dimension: sector {
    type: string
    sql: ${TABLE}.sector ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: serial {
    type: string
    sql: ${TABLE}.serial ;;
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
