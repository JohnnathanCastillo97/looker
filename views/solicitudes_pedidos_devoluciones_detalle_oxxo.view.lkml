view: solicitudes_pedidos_devoluciones_detalle_oxxo {
  sql_table_name: bd_ic_cliente.solicitudes_pedidos_devoluciones_detalle_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: almacen {
    type: string
    sql: ${TABLE}.almacen ;;
  }
  dimension: canastilla {
    type: string
    sql: ${TABLE}.canastilla ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: catalogo_compra_detalle_id {
    type: number
    sql: ${TABLE}.catalogoCompraDetalleId ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: placa_activo {
    type: string
    sql: ${TABLE}.placaActivo ;;
  }
  dimension: producto_id {
    type: number
    sql: ${TABLE}.productoId ;;
  }
  dimension: punto_verificacion_etn {
    type: string
    sql: ${TABLE}.puntoVerificacionEtn ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: solicitud_pedido_devolucion_id {
    type: number
    sql: ${TABLE}.solicitudPedidoDevolucionId ;;
  }
  dimension: tipo_stock {
    type: string
    sql: ${TABLE}.tipoStock ;;
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
  dimension: verificacion {
    type: string
    sql: ${TABLE}.verificacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
