view: log_cron_mst_solicitudes {
  sql_table_name: bd_ic_cliente.log_cron_mst_solicitudes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: rango_fechas {
    type: string
    sql: ${TABLE}.rangoFechas ;;
  }
  dimension: solicitudes {
    type: string
    sql: ${TABLE}.solicitudes ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
