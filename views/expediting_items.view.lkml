view: expediting_items {
  sql_table_name: bd_ic_cliente.expediting_items ;;
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
  dimension: borrado {
    type: string
    sql: ${TABLE}.borrado ;;
  }
  dimension: cantidad_original {
    type: number
    sql: ${TABLE}.cantidad_original ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }
  dimension: contrato_ref {
    type: string
    sql: ${TABLE}.contrato_ref ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: entrega_final {
    type: string
    sql: ${TABLE}.entrega_final ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_entrega {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrega ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }
  dimension: id_expediting {
    type: number
    sql: ${TABLE}.id_expediting ;;
  }
  dimension: imputacion {
    type: string
    sql: ${TABLE}.imputacion ;;
  }
  dimension: indicador_iva {
    type: string
    sql: ${TABLE}.indicador_iva ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }
  dimension: necesidad {
    type: string
    sql: ${TABLE}.necesidad ;;
  }
  dimension: numero_pieza_fabricante {
    type: string
    sql: ${TABLE}.numero_pieza_fabricante ;;
  }
  dimension: posicion {
    type: string
    sql: ${TABLE}.posicion ;;
  }
  dimension: posicion_contrato_ref {
    type: string
    sql: ${TABLE}.posicion_contrato_ref ;;
  }
  dimension: posicion_solped_ref {
    type: string
    sql: ${TABLE}.posicion_solped_ref ;;
  }
  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }
  dimension: solicitante {
    type: string
    sql: ${TABLE}.solicitante ;;
  }
  dimension: solped_ref {
    type: string
    sql: ${TABLE}.solped_ref ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tolerancia_deficit {
    type: string
    sql: ${TABLE}.tolerancia_deficit ;;
  }
  dimension: tolerancia_exceso {
    type: string
    sql: ${TABLE}.tolerancia_exceso ;;
  }
  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.unidad_medida ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_modificacion {
    type: number
    sql: ${TABLE}.usuario_modificacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
