view: zmold_catalogos_items_atributos_adicionales {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_items_atributos_adicionales ;;

  dimension: cod_item {
    type: number
    sql: ${TABLE}.cod_item ;;
  }
  dimension: cod_tipo {
    type: number
    sql: ${TABLE}.cod_tipo ;;
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
  dimension: id_item_adicional {
    type: number
    sql: ${TABLE}.id_item_adicional ;;
  }
  dimension: parametro {
    type: string
    sql: ${TABLE}.parametro ;;
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
