view: tg_oferta_lotes_items {
  sql_table_name: bd_ic_cliente.tg_oferta_lotes_items ;;

  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
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
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: id_item {
    type: number
    sql: ${TABLE}.id_item ;;
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
