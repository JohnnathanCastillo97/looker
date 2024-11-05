view: logs_solicitudes {
  sql_table_name: bd_ic_cliente.logs_solicitudes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario {
    type: number
    sql: ${TABLE}.usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
