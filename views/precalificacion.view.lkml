view: precalificacion {
  sql_table_name: bd_ic_cliente.precalificacion ;;

  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
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
  dimension: id_precalificacion {
    type: number
    sql: ${TABLE}.id_precalificacion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: num_precalificacion {
    type: number
    sql: ${TABLE}.num_precalificacion ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: presupuesto {
    type: number
    sql: ${TABLE}.presupuesto ;;
  }
  dimension: tipo_precalificacion {
    type: string
    sql: ${TABLE}.tipo_precalificacion ;;
  }
  dimension: tipo_proceso {
    type: string
    sql: ${TABLE}.tipo_proceso ;;
  }
  dimension: trm {
    type: number
    sql: ${TABLE}.trm ;;
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
