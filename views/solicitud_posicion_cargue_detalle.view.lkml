view: solicitud_posicion_cargue_detalle {
  sql_table_name: bd_ic_cliente.solicitud_posicion_cargue_detalle ;;
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
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: cuenta_mayor {
    type: string
    sql: ${TABLE}.cuenta_mayor ;;
  }
  dimension: data_adicional {
    type: string
    sql: ${TABLE}.data_adicional ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: elemento_gasto {
    type: string
    sql: ${TABLE}.elemento_gasto ;;
  }
  dimension: elemento_pep {
    type: string
    sql: ${TABLE}.elemento_pep ;;
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
  dimension: fila_documento {
    type: number
    sql: ${TABLE}.fila_documento ;;
  }
  dimension: grupo_articulos {
    type: string
    sql: ${TABLE}.grupo_articulos ;;
  }
  dimension: grupo_compras {
    type: string
    sql: ${TABLE}.grupo_compras ;;
  }
  dimension: id_solicitud_posicion_cargue {
    type: number
    sql: ${TABLE}.id_solicitud_posicion_cargue ;;
  }
  dimension: imputacion {
    type: string
    sql: ${TABLE}.imputacion ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: orden_estadistica {
    type: string
    sql: ${TABLE}.orden_estadistica ;;
  }
  dimension: posicion {
    type: number
    sql: ${TABLE}.posicion ;;
  }
  dimension: resultado {
    type: string
    sql: ${TABLE}.resultado ;;
  }
  dimension: tipo_posicion {
    type: string
    sql: ${TABLE}.tipo_posicion ;;
  }
  dimension: um {
    type: string
    sql: ${TABLE}.um ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor_iva {
    type: number
    sql: ${TABLE}.valor_iva ;;
  }
  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }
  dimension: valor_unitario {
    type: number
    sql: ${TABLE}.valor_unitario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
