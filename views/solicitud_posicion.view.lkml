view: solicitud_posicion {
  sql_table_name: bd_ic_cliente.solicitud_posicion ;;
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
  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: elemento {
    type: string
    sql: ${TABLE}.elemento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_entrenga {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrenga ;;
  }
  dimension: grupo_articulo {
    type: string
    sql: ${TABLE}.grupo_articulo ;;
  }
  dimension: grupo_compras {
    type: string
    sql: ${TABLE}.grupo_compras ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
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
  dimension: orden {
    type: string
    sql: ${TABLE}.orden ;;
  }
  dimension: posicion {
    type: number
    sql: ${TABLE}.posicion ;;
  }
  dimension: solicitud_posicion_cargue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.solicitud_posicion_cargue_id ;;
  }
  dimension: solped {
    type: string
    sql: ${TABLE}.solped ;;
  }
  dimension: text_p {
    type: string
    sql: ${TABLE}.textP ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
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
    drill_fields: [id, solicitud_posicion_cargue.id]
  }
}
