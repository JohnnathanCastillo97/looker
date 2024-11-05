view: catalogo_items {
  sql_table_name: bd_ic_cliente.catalogo_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: carrusel {
    type: string
    sql: ${TABLE}.carrusel ;;
  }
  dimension: cod_catalogo {
    type: number
    sql: ${TABLE}.cod_catalogo ;;
  }
  dimension: cod_material {
    type: number
    sql: ${TABLE}.cod_material ;;
  }
  dimension: cod_producto {
    type: number
    sql: ${TABLE}.cod_producto ;;
  }
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
  dimension: dias_entrega {
    type: number
    sql: ${TABLE}.dias_entrega ;;
  }
  dimension: disponible {
    type: string
    sql: ${TABLE}.disponible ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: iva {
    type: yesno
    sql: ${TABLE}.iva ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: posicion {
    type: number
    sql: ${TABLE}.posicion ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
