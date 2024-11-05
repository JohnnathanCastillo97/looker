view: productos_categoria {
  sql_table_name: bd_ic_cliente.productos_categoria ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_categoria {
    type: number
    sql: ${TABLE}.id_categoria ;;
  }
  dimension: llave_categoria {
    type: string
    sql: ${TABLE}.llave_categoria ;;
  }
  dimension: nombre_categoria {
    type: string
    sql: ${TABLE}.nombre_categoria ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
