view: zmold_catalogos_validacion_items_proveedor {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_validacion_items_proveedor ;;

  dimension: cod_item {
    type: number
    sql: ${TABLE}.cod_item ;;
  }
  dimension: cod_tipo_modificacion {
    type: number
    sql: ${TABLE}.cod_tipo_modificacion ;;
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
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: id_validacion {
    type: number
    sql: ${TABLE}.id_validacion ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: parametro_validacion {
    type: string
    sql: ${TABLE}.parametro_validacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_modificacion {
    type: number
    sql: ${TABLE}.usuario_modificacion ;;
  }
  measure: count {
    type: count
  }
}
