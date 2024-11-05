view: preguntas_frecuentes_comentarios {
  sql_table_name: bd_ic_cliente.preguntas_frecuentes_comentarios ;;

  dimension: cod_faq {
    type: number
    sql: ${TABLE}.cod_faq ;;
  }
  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_calificacion {
    type: number
    sql: ${TABLE}.id_calificacion ;;
  }
  dimension: seleccion_utilidad {
    type: string
    sql: ${TABLE}.seleccion_utilidad ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
