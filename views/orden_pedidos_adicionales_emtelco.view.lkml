view: orden_pedidos_adicionales_emtelco {
  sql_table_name: bd_ic_cliente.orden_pedidos_adicionales_emtelco ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: consorcio_temporal {
    type: string
    sql: ${TABLE}.consorcio_temporal ;;
  }
  dimension: consorcio_temporal_nombre {
    type: string
    sql: ${TABLE}.consorcio_temporal_nombre ;;
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
  dimension: id_orden_pedido {
    type: number
    sql: ${TABLE}.id_orden_pedido ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
