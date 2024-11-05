view: mensajes_old {
  sql_table_name: bd_ic_cliente.mensajes_old ;;

  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: asunto {
    type: string
    sql: ${TABLE}.asunto ;;
  }
  dimension: cuerpo {
    type: string
    sql: ${TABLE}.cuerpo ;;
  }
  dimension: destinatarios {
    type: string
    sql: ${TABLE}.destinatarios ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_limite {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_limite ;;
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
  dimension: id_creador {
    type: number
    sql: ${TABLE}.id_creador ;;
  }
  dimension: id_mensaje {
    type: number
    sql: ${TABLE}.id_mensaje ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_padre {
    type: number
    sql: ${TABLE}.id_padre ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }
  dimension: tipo_mensaje {
    type: string
    sql: ${TABLE}.tipo_mensaje ;;
  }
  dimension: usuarios_internos {
    type: string
    sql: ${TABLE}.usuarios_internos ;;
  }
  measure: count {
    type: count
  }
}
