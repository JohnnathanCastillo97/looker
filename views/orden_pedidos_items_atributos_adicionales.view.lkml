view: orden_pedidos_items_atributos_adicionales {
  sql_table_name: bd_ic_cliente.orden_pedidos_items_atributos_adicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: atributo_nombre {
    type: string
    sql: ${TABLE}.atributo_nombre ;;
  }
  dimension: atributo_valor {
    type: string
    sql: ${TABLE}.atributo_valor ;;
  }
  dimension: cod_item {
    type: number
    sql: ${TABLE}.cod_item ;;
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
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
