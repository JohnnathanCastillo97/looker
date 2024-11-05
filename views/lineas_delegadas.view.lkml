view: lineas_delegadas {
  sql_table_name: bd_ic_cliente.lineas_delegadas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: duenio_actual_linea {
    type: number
    sql: ${TABLE}.duenio_actual_linea ;;
  }
  dimension: duenio_anterior_linea {
    type: number
    sql: ${TABLE}.duenio_anterior_linea ;;
  }
  dimension: duenio_original {
    type: number
    sql: ${TABLE}.duenio_original ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_linea {
    type: number
    sql: ${TABLE}.id_linea ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}