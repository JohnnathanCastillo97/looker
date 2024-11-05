view: comunicaciones_enviadas_2021 {
  sql_table_name: bd_ic_cliente.comunicaciones_enviadas_2021 ;;
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
  dimension: asunto {
    type: string
    sql: ${TABLE}.asunto ;;
  }
  dimension: contenido {
    type: string
    sql: ${TABLE}.contenido ;;
  }
  dimension: destinatarios {
    type: string
    sql: ${TABLE}.destinatarios ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_mensaje_mailgun {
    type: string
    sql: ${TABLE}.id_mensaje_mailgun ;;
  }
  dimension: mensaje_estado {
    type: string
    sql: ${TABLE}.mensaje_estado ;;
  }
  dimension: modulo_id {
    type: number
    sql: ${TABLE}.modulo_id ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }
  dimension: relacion_id {
    type: number
    sql: ${TABLE}.relacion_id ;;
  }
  dimension: sub_relacion_id {
    type: string
    sql: ${TABLE}.sub_relacion_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
