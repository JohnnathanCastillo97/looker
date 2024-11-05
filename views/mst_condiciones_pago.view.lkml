view: mst_condiciones_pago {
  sql_table_name: bd_ic_cliente.mst_condiciones_pago ;;

  dimension: aclaracion {
    type: string
    sql: ${TABLE}.aclaracion ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: codigo_pago {
    type: string
    sql: ${TABLE}.codigo_pago ;;
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
  dimension: id_condicion_pago {
    type: number
    sql: ${TABLE}.id_condicion_pago ;;
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
