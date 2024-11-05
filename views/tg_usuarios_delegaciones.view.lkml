view: tg_usuarios_delegaciones {
  sql_table_name: bd_ic_cliente.tg_usuarios_delegaciones ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: id_delegacion {
    type: number
    sql: ${TABLE}.id_delegacion ;;
  }
  dimension: id_usuario_actualizar {
    type: number
    sql: ${TABLE}.id_usuario_actualizar ;;
  }
  measure: count {
    type: count
  }
}
