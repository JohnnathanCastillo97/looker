view: evaluacion_clase {
  sql_table_name: bd_ic_cliente.evaluacion_clase ;;
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
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_evaluacion_ficha {
    type: number
    sql: ${TABLE}.id_evaluacion_ficha ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: puntaje {
    type: number
    sql: ${TABLE}.puntaje ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}