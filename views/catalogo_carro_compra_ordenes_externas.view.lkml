view: catalogo_carro_compra_ordenes_externas {
  sql_table_name: bd_ic_cliente.catalogo_carro_compra_ordenes_externas ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: numero_compra {
    type: string
    sql: ${TABLE}.numero_compra ;;
  }
  dimension: orden_proveedor_externo {
    type: string
    sql: ${TABLE}.orden_proveedor_externo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
  }
}
