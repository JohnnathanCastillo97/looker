view: ordenes_salidas_oxxo {
  sql_table_name: bd_ic_cliente.ordenes_salidas_oxxo ;;
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
  dimension: estado_general {
    type: string
    sql: ${TABLE}.estadoGeneral ;;
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
  dimension: finalizacion_edicion {
    type: string
    sql: ${TABLE}.finalizacionEdicion ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: solicitud_pedido_compra_id {
    type: number
    sql: ${TABLE}.solicitudPedidoCompraId ;;
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
