view: clientes_modulos {
  sql_table_name: bd_ic_cliente.clientes_modulos ;;

  dimension: acceso {
    type: string
    sql: ${TABLE}.acceso ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
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
  dimension: id_modulo {
    type: number
    sql: ${TABLE}.id_modulo ;;
  }
  dimension: imagen {
    type: string
    sql: ${TABLE}.imagen ;;
  }
  dimension: modulo {
    type: string
    sql: ${TABLE}.modulo ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
