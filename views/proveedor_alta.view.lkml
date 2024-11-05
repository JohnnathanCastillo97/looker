view: proveedor_alta {
  sql_table_name: bd_ic_cliente.proveedor_alta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: alta {
    type: string
    sql: ${TABLE}.alta ;;
  }
  dimension: clasificacion {
    type: string
    sql: ${TABLE}.clasificacion ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_usuario_registra {
    type: number
    sql: ${TABLE}.id_usuario_registra ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
