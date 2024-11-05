view: imagenes_catalogos {
  sql_table_name: bd_ic_cliente.imagenes_catalogos ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_imagen {
    type: number
    sql: ${TABLE}.id_imagen ;;
  }
  dimension: ruta_imagen {
    type: string
    sql: ${TABLE}.ruta_imagen ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
