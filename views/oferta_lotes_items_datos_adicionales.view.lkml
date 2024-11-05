view: oferta_lotes_items_datos_adicionales {
  sql_table_name: bd_ic_cliente.oferta_lotes_items_datos_adicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_item {
    type: number
    sql: ${TABLE}.cod_item ;;
  }
  dimension: cod_lote {
    type: number
    sql: ${TABLE}.cod_lote ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: impuesto {
    type: string
    sql: ${TABLE}.impuesto ;;
  }
  dimension: numero_articulo {
    type: number
    sql: ${TABLE}.numero_articulo ;;
  }
  dimension: numero_linea {
    type: number
    sql: ${TABLE}.numero_linea ;;
  }
  dimension: obligatorio {
    type: string
    sql: ${TABLE}.obligatorio ;;
  }
  dimension: referencia {
    type: string
    sql: ${TABLE}.referencia ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
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
