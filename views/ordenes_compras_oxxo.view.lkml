view: ordenes_compras_oxxo {
  sql_table_name: bd_ic_cliente.ordenes_compras_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comprador_seleccion_id {
    type: string
    sql: ${TABLE}.compradorSeleccionId ;;
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
  dimension: despacho {
    type: string
    sql: ${TABLE}.despacho ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_formato_transferencia_activo {
    type: string
    sql: ${TABLE}.estadoFormatoTransferenciaActivo ;;
  }
  dimension: estado_general {
    type: string
    sql: ${TABLE}.estadoGeneral ;;
  }
  dimension: fecha_entrega_deseada {
    type: string
    sql: ${TABLE}.fechaEntregaDeseada ;;
  }
  dimension_group: fecha_envio_correo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaEnvioCorreo ;;
  }
  dimension_group: fecha_finalizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaFinalizacion ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: pre_orden_compra_aprobacion_id {
    type: string
    sql: ${TABLE}.preOrdenCompraAprobacionId ;;
  }
  dimension: pre_orden_compra_id {
    type: number
    sql: ${TABLE}.preOrdenCompraId ;;
  }
  dimension: prefijo {
    type: string
    sql: ${TABLE}.prefijo ;;
  }
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedorId ;;
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
  measure: count {
    type: count
    drill_fields: [id]
  }
}
