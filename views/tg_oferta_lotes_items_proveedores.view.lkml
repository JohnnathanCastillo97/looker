view: tg_oferta_lotes_items_proveedores {
  sql_table_name: bd_ic_cliente.tg_oferta_lotes_items_proveedores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: cod_item {
    type: number
    sql: ${TABLE}.cod_item ;;
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
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
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
