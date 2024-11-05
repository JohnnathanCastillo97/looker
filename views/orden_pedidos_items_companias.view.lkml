view: orden_pedidos_items_companias {
  sql_table_name: bd_ic_cliente.orden_pedidos_items_companias ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: string
    sql: ${TABLE}.cantidad ;;
  }
  dimension: cantidad_seleccionada_compania {
    type: string
    sql: ${TABLE}.cantidad_seleccionada_compania ;;
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
  dimension: id_compania {
    type: number
    sql: ${TABLE}.id_compania ;;
  }
  dimension: id_item_orden {
    type: number
    sql: ${TABLE}.id_item_orden ;;
  }
  dimension: id_user_updated {
    type: number
    sql: ${TABLE}.id_user_updated ;;
  }
  dimension: lote_minimo {
    type: string
    sql: ${TABLE}.lote_minimo ;;
  }
  dimension_group: tiempo_entrega {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.tiempo_entrega ;;
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
