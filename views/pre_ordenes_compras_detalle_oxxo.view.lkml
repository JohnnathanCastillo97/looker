view: pre_ordenes_compras_detalle_oxxo {
  sql_table_name: bd_ic_cliente.pre_ordenes_compras_detalle_oxxo ;;
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
  dimension: cantidad_pedir {
    type: number
    sql: ${TABLE}.cantidadPedir ;;
  }
  dimension: catalogo_compra_detalle_id {
    type: number
    sql: ${TABLE}.catalogoCompraDetalleId ;;
  }
  dimension: comprador {
    type: number
    sql: ${TABLE}.comprador ;;
  }
  dimension: contrato_marco_id {
    type: number
    sql: ${TABLE}.contratoMarcoId ;;
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
  dimension: fecha_entrega_deseada {
    type: string
    sql: ${TABLE}.fechaEntregaDeseada ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: pre_orden_compra_aprobacion_id {
    type: string
    sql: ${TABLE}.preOrdenCompraAprobacionId ;;
  }
  dimension: pre_orden_compra_id {
    type: number
    sql: ${TABLE}.preOrdenCompraId ;;
  }
  dimension: producto_id {
    type: number
    sql: ${TABLE}.productoId ;;
  }
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedorId ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: seleccionador_id {
    type: string
    sql: ${TABLE}.seleccionadorId ;;
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
