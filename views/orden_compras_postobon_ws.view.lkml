view: orden_compras_postobon_ws {
  sql_table_name: bd_ic_cliente.orden_compras_postobon_ws ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: notificacion {
    type: string
    sql: ${TABLE}.notificacion ;;
  }
  dimension: nro_pedido {
    type: string
    sql: ${TABLE}.NroPedido ;;
  }
  dimension: nro_solicitud_pedido {
    type: string
    sql: ${TABLE}.NroSolicitudPedido ;;
  }
  dimension: pos_pedido {
    type: string
    sql: ${TABLE}.PosPedido ;;
  }
  dimension: pos_solicitud_pedido {
    type: string
    sql: ${TABLE}.PosSolicitudPedido ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
