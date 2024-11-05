view: pre_ordenes_compras_oxxo {
  sql_table_name: bd_ic_cliente.pre_ordenes_compras_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: catalogo_compra_cabecera_id {
    type: number
    sql: ${TABLE}.catalogoCompraCabeceraId ;;
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
  dimension: entrega_total {
    type: string
    sql: ${TABLE}.entregaTotal ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: numero_folio {
    type: string
    sql: ${TABLE}.numeroFolio ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: secuencia_solicitud {
    type: string
    sql: ${TABLE}.secuenciaSolicitud ;;
  }
  dimension: solicitud_pedido_compra_id {
    type: number
    sql: ${TABLE}.solicitudPedidoCompraId ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
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
