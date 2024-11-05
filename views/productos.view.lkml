view: productos {
  sql_table_name: bd_ic_cliente.productos ;;

  dimension: cod_categoria {
    type: number
    sql: ${TABLE}.cod_categoria ;;
  }
  dimension: cod_marca {
    type: number
    sql: ${TABLE}.cod_marca ;;
  }
  dimension: descripcion_producto {
    type: string
    sql: ${TABLE}.descripcion_producto ;;
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
  dimension: id_producto {
    type: number
    sql: ${TABLE}.id_producto ;;
  }
  dimension: imagenes_producto {
    type: string
    sql: ${TABLE}.imagenes_producto ;;
  }
  dimension: titulo_producto {
    type: string
    sql: ${TABLE}.titulo_producto ;;
  }
  dimension: unidad_medida {
    type: number
    sql: ${TABLE}.unidad_medida ;;
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
