view: flujos_aprobacion {
  sql_table_name: bd_ic_cliente.flujos_aprobacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: abreviatura {
    type: string
    sql: ${TABLE}.abreviatura ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_modulo {
    type: number
    sql: ${TABLE}.id_modulo ;;
  }
  measure: count {
    type: count
    drill_fields: [id, flujos_aprob_pasos.count]
  }
}
