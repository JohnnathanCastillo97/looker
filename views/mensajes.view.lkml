view: mensajes {
  sql_table_name: bd_ic_cliente.mensajes ;;

  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: asunto {
    type: string
    sql: ${TABLE}.asunto ;;
  }
  dimension: bandera {
    type: number
    sql: ${TABLE}.bandera ;;
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
  dimension: fuente_mensaje {
    type: string
    sql: ${TABLE}.fuente_mensaje ;;
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
    type: string
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
  dimension: requiere_respuesta {
    type: string
    sql: ${TABLE}.requiere_respuesta ;;
  }
  dimension: respondido {
    type: number
    sql: ${TABLE}.respondido ;;
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
