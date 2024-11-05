view: solicitudes_en_firme_pedidos_compras_detalle_oxxo {
  sql_table_name: bd_ic_cliente.solicitudes_en_firme_pedidos_compras_detalle_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_aumento {
    type: number
    sql: ${TABLE}.cantidadAumento ;;
  }
  dimension: cantidad_original {
    type: number
    sql: ${TABLE}.cantidadOriginal ;;
  }
  dimension: catalogo_material_id {
    type: number
    sql: ${TABLE}.catalogoMaterialId ;;
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
  dimension: plu {
    type: string
    sql: ${TABLE}.plu ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: solicitud_en_firme_pedido_compra_id {
    type: number
    sql: ${TABLE}.solicitudEnFirmePedidoCompraId ;;
  }
  dimension: solicitud_pedido_compra_detalle_id {
    type: number
    sql: ${TABLE}.solicitudPedidoCompraDetalleId ;;
  }
  dimension: tipo_anadido {
    type: string
    sql: ${TABLE}.tipoAnadido ;;
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
