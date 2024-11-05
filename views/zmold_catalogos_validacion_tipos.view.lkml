view: zmold_catalogos_validacion_tipos {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_validacion_tipos ;;

  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
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
  dimension: id_tipo_modificacion {
    type: number
    sql: ${TABLE}.id_tipo_modificacion ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
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
