view: zmold_catalogos_imagenesoldxxx {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_imagenesoldxxx ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: extension_archivo {
    type: string
    sql: ${TABLE}.extension_archivo ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_archivo {
    type: number
    sql: ${TABLE}.id_archivo ;;
  }
  dimension: nombre_archivo {
    type: string
    sql: ${TABLE}.nombre_archivo ;;
  }
  dimension: peso_archivo {
    type: string
    sql: ${TABLE}.peso_archivo ;;
  }
  dimension: ruta_archivo {
    type: string
    sql: ${TABLE}.ruta_archivo ;;
  }
  dimension: ruta_miniatura {
    type: string
    sql: ${TABLE}.ruta_miniatura ;;
  }
  dimension: tipo_usuario {
    type: string
    sql: ${TABLE}.tipo_usuario ;;
  }
  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
