view: view_clientes_modulos_temporal {
  sql_table_name: bd_ic_cliente.view_clientes_modulos_temporal ;;

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
    type: string
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
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
