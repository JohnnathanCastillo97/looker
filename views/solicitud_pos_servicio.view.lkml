view: solicitud_pos_servicio {
  sql_table_name: bd_ic_cliente.solicitud_pos_servicio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: elemento {
    type: string
    sql: ${TABLE}.elemento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }
  dimension: id_posicion {
    type: number
    sql: ${TABLE}.id_posicion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: numero_linea {
    type: string
    sql: ${TABLE}.numero_linea ;;
  }
  dimension: numero_servicio {
    type: string
    sql: ${TABLE}.numero_servicio ;;
  }
  dimension: orden {
    type: string
    sql: ${TABLE}.orden ;;
  }
  dimension: posicion {
    type: number
    sql: ${TABLE}.posicion ;;
  }
  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }
  dimension: um {
    type: string
    sql: ${TABLE}.um ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
