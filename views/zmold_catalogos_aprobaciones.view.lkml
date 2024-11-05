view: zmold_catalogos_aprobaciones {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_aprobaciones ;;

  dimension: cod_grupo_solicitud {
    type: number
    sql: ${TABLE}.cod_grupo_solicitud ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_solicitud {
    type: string
    sql: ${TABLE}.estado_solicitud ;;
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
  dimension: id_aprobacion {
    type: number
    sql: ${TABLE}.id_aprobacion ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
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
