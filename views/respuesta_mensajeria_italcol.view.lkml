view: respuesta_mensajeria_italcol {
  sql_table_name: bd_ic_cliente.respuesta_mensajeria_italcol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: creador {
    type: string
    sql: ${TABLE}.creador ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: mensaje {
    type: string
    sql: ${TABLE}.mensaje ;;
  }
  dimension: mensaje_id {
    type: number
    sql: ${TABLE}.mensaje_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
