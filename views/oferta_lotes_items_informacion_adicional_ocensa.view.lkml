view: oferta_lotes_items_informacion_adicional_ocensa {
  sql_table_name: bd_ic_cliente.oferta_lotes_items_informacion_adicional_ocensa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: almacen {
    type: string
    sql: ${TABLE}.almacen ;;
  }
  dimension: cantidad_original {
    type: number
    sql: ${TABLE}.cantidad_original ;;
  }
  dimension: cantidad_pendiente {
    type: number
    sql: ${TABLE}.cantidad_pendiente ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
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
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_entrega {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrega ;;
  }
  dimension_group: fecha_liberacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_liberacion ;;
  }
  dimension_group: fecha_ultima_precio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ultima_precio ;;
  }
  dimension: grupo_articulo {
    type: string
    sql: ${TABLE}.grupo_articulo ;;
  }
  dimension: grupo_compras {
    type: string
    sql: ${TABLE}.grupo_compras ;;
  }
  dimension: imprevisto {
    type: number
    sql: ${TABLE}.imprevisto ;;
  }
  dimension: imputacion {
    type: string
    sql: ${TABLE}.imputacion ;;
  }
  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: numero_linea {
    type: string
    sql: ${TABLE}.numero_linea ;;
  }
  dimension: numero_servicio {
    type: string
    sql: ${TABLE}.numero_servicio ;;
  }
  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: ultimo_precio {
    type: number
    sql: ${TABLE}.ultimo_precio ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: utilidad {
    type: number
    sql: ${TABLE}.utilidad ;;
  }
  dimension: valor_anio_sin_iva {
    type: number
    sql: ${TABLE}.valor_anio_sin_iva ;;
  }
  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }
  dimension: valor_uni_sin_iva {
    type: number
    sql: ${TABLE}.valor_uni_sin_iva ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
