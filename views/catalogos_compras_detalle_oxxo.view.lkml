view: catalogos_compras_detalle_oxxo {
  sql_table_name: bd_ic_cliente.catalogos_compras_detalle_oxxo ;;
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
  dimension: caracteristica {
    type: string
    sql: ${TABLE}.caracteristica ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: imagen {
    type: string
    sql: ${TABLE}.imagen ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: pre_orden_compra_detalle_id {
    type: number
    sql: ${TABLE}.preOrdenCompraDetalleId ;;
  }
  dimension: producto_id {
    type: number
    sql: ${TABLE}.productoId ;;
  }
  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }
  dimension: tipo_detalle {
    type: string
    sql: ${TABLE}.tipoDetalle ;;
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
