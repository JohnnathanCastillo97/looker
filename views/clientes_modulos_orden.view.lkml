view: clientes_modulos_orden {
  sql_table_name: bd_ic_cliente.clientes_modulos_orden ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_modulo {
    type: number
    sql: ${TABLE}.id_modulo ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
