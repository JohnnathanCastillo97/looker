view: oferta_lotes_items_imputacion_ocensa {
  sql_table_name: bd_ic_cliente.oferta_lotes_items_imputacion_ocensa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: activo {
    type: string
    sql: ${TABLE}.activo ;;
  }
  dimension: cantidad {
    type: string
    sql: ${TABLE}.cantidad ;;
  }
  dimension: ceco {
    type: string
    sql: ${TABLE}.ceco ;;
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
  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }
  dimension: distribucion {
    type: string
    sql: ${TABLE}.distribucion ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension: elementopep {
    type: string
    sql: ${TABLE}.elementopep ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: numlinea {
    type: string
    sql: ${TABLE}.numlinea ;;
  }
  dimension: orden {
    type: string
    sql: ${TABLE}.orden ;;
  }
  dimension: posicion {
    type: string
    sql: ${TABLE}.posicion ;;
  }
  dimension: respherra {
    type: string
    sql: ${TABLE}.respherra ;;
  }
  dimension: subnumero {
    type: string
    sql: ${TABLE}.subnumero ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
