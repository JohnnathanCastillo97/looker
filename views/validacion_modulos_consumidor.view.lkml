view: validacion_modulos_consumidor {
  sql_table_name: bd_ic_cliente.validacion_modulos_consumidor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_validacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_validacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_consumidor {
    type: number
    sql: ${TABLE}.id_consumidor ;;
  }
  dimension: modulo {
    type: string
    sql: ${TABLE}.modulo ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: usuario_validacion {
    type: number
    sql: ${TABLE}.usuario_validacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
