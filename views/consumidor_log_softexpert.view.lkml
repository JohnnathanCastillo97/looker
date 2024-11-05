view: consumidor_log_softexpert {
  sql_table_name: bd_ic_cliente.consumidor_log_softexpert ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension_group: fecha_ultima_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ultima_actualizacion ;;
  }
  dimension: id_consumidor {
    type: number
    sql: ${TABLE}.id_consumidor ;;
  }
  dimension: id_validacion {
    type: number
    sql: ${TABLE}.id_validacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
