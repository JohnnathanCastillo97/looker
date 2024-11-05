view: oferta_lotes_items_informacion_adicional_odl {
  sql_table_name: bd_ic_cliente.oferta_lotes_items_informacion_adicional_odl ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }
  dimension: id_pcc {
    type: string
    sql: ${TABLE}.id_pcc ;;
  }
  dimension: imputacion {
    type: string
    sql: ${TABLE}.imputacion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: posicion {
    type: number
    sql: ${TABLE}.posicion ;;
  }
  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
