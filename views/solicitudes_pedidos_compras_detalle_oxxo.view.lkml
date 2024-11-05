view: solicitudes_pedidos_compras_detalle_oxxo {
  sql_table_name: bd_ic_cliente.solicitudes_pedidos_compras_detalle_oxxo ;;
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
  dimension: cantidad_anterior {
    type: number
    sql: ${TABLE}.cantidadAnterior ;;
  }
  dimension: cantidad_orden_salida_nueva {
    type: number
    sql: ${TABLE}.cantidadOrdenSalidaNueva ;;
  }
  dimension: cantidad_para_reserva {
    type: number
    sql: ${TABLE}.cantidadParaReserva ;;
  }
  dimension: cantidad_pendiente_hijos {
    type: number
    sql: ${TABLE}.cantidadPendienteHijos ;;
  }
  dimension: cantidad_pre_orden_nueva {
    type: number
    sql: ${TABLE}.cantidadPreOrdenNueva ;;
  }
  dimension: cantidad_recepcionada_orden_salida {
    type: number
    sql: ${TABLE}.cantidadRecepcionadaOrdenSalida ;;
  }
  dimension: cantidad_salida {
    type: number
    sql: ${TABLE}.cantidadSalida ;;
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
  dimension: finalizacion_edicion {
    type: string
    sql: ${TABLE}.finalizacionEdicion ;;
  }
  dimension: impacto_reserva {
    type: string
    sql: ${TABLE}.impactoReserva ;;
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
  dimension: solicitud_pedido_compra_id {
    type: number
    sql: ${TABLE}.solicitudPedidoCompraId ;;
  }
  dimension: tiene_impacto {
    type: string
    sql: ${TABLE}.tieneImpacto ;;
  }
  dimension: tipo_anadido {
    type: string
    sql: ${TABLE}.tipoAnadido ;;
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
