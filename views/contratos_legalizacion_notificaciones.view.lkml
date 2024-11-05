view: contratos_legalizacion_notificaciones {
  sql_table_name: bd_ic_cliente.contratos_legalizacion_notificaciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contratos_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contratos_id ;;
  }
  dimension: email_notificacion {
    type: string
    sql: ${TABLE}.email_notificacion ;;
  }
  dimension_group: fecha_notificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_notificacion ;;
  }
  dimension: nombre_from_notificacion {
    type: string
    sql: ${TABLE}.nombre_from_notificacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos.id]
  }
}
