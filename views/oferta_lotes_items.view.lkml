view: oferta_lotes_items {
  sql_table_name: bd_ic_cliente.oferta_lotes_items ;;

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: cod_lote {
    type: number
    sql: ${TABLE}.cod_lote ;;
  }
  dimension: cod_unidad_medida {
    type: number
    sql: ${TABLE}.cod_unidad_medida ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
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
  dimension: id_item {
    type: number
    sql: ${TABLE}.id_item ;;
  }
  dimension: id_pcc {
    type: number
    sql: ${TABLE}.id_pcc ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: numero_solped {
    type: string
    sql: ${TABLE}.numero_solped ;;
  }
  dimension: presupuesto {
    type: string
    sql: ${TABLE}.presupuesto ;;
  }
  dimension: secuencia {
    type: number
    sql: ${TABLE}.secuencia ;;
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
  }
}
