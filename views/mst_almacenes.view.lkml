view: mst_almacenes {
  sql_table_name: bd_ic_cliente.mst_almacenes ;;

  dimension: cod_centro_logistico {
    type: number
    sql: ${TABLE}.cod_centro_logistico ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: denominacion {
    type: string
    sql: ${TABLE}.denominacion ;;
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
  dimension: id_almacen {
    type: number
    sql: ${TABLE}.id_almacen ;;
  }
  dimension: numero_almacen {
    type: string
    sql: ${TABLE}.numero_almacen ;;
  }
  dimension: numero_centro_logistico {
    type: string
    sql: ${TABLE}.numero_centro_logistico ;;
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
