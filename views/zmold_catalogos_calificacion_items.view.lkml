view: zmold_catalogos_calificacion_items {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_calificacion_items ;;

  dimension: cod_item {
    type: number
    sql: ${TABLE}.cod_item ;;
  }
  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actulizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actulizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_calificacion {
    type: number
    sql: ${TABLE}.id_calificacion ;;
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
    type: yesno
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
  }
}
