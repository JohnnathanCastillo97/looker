view: productos_marcas {
  sql_table_name: bd_ic_cliente.productos_marcas ;;

  dimension: cod_categoria {
    type: string
    sql: ${TABLE}.cod_categoria ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_marca {
    type: number
    sql: ${TABLE}.id_marca ;;
  }
  dimension: nombre_marca {
    type: string
    sql: ${TABLE}.nombre_marca ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
