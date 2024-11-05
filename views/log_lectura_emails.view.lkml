view: log_lectura_emails {
  sql_table_name: bd_ic_cliente.log_lectura_emails ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_correo_lectura {
    type: number
    sql: ${TABLE}.id_correo_lectura ;;
  }
  dimension: mensaje {
    type: string
    sql: ${TABLE}.mensaje ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
