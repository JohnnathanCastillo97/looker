view: consumidor_registro {
  sql_table_name: bd_ic_cliente.consumidor_registro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aplica_credito {
    type: string
    sql: ${TABLE}.aplica_credito ;;
  }
  dimension: creador_solicitud {
    type: number
    sql: ${TABLE}.creador_solicitud ;;
  }
  dimension: cupo {
    type: number
    sql: ${TABLE}.cupo ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_solicitud {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_solicitud ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_consumidor {
    type: number
    sql: ${TABLE}.id_consumidor ;;
  }
  dimension: numero_solicitud {
    type: string
    sql: ${TABLE}.numero_solicitud ;;
  }
  dimension: numero_ticket {
    type: string
    sql: ${TABLE}.numero_ticket ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }
  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }
  dimension: producto {
    type: number
    sql: ${TABLE}.producto ;;
  }
  dimension: solicitante {
    type: number
    sql: ${TABLE}.solicitante ;;
  }
  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
