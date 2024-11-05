view: solfin_casos_analistas {
  sql_table_name: bd_ic_cliente.solfin_casos_analistas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: count_devolucion {
    type: number
    sql: ${TABLE}.count_devolucion ;;
  }
  dimension: count_escalamiento {
    type: number
    sql: ${TABLE}.count_escalamiento ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado_caso {
    type: string
    sql: ${TABLE}.estado_caso ;;
  }
  dimension: estado_logico {
    type: string
    sql: ${TABLE}.estado_logico ;;
  }
  dimension: fecha_esperada_respuesta {
    type: string
    sql: ${TABLE}.fecha_esperada_respuesta ;;
  }
  dimension: fecha_esperada_respuesta_devl {
    type: string
    sql: ${TABLE}.fecha_esperada_respuesta_devl ;;
  }
  dimension: fecha_esperada_respuesta_escala {
    type: string
    sql: ${TABLE}.fecha_esperada_respuesta_escala ;;
  }
  dimension: id_usaurio_escala {
    type: number
    sql: ${TABLE}.id_usaurio_escala ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: mensaje_id {
    type: number
    sql: ${TABLE}.mensaje_id ;;
  }
  dimension: tiempo_analista {
    type: string
    sql: ${TABLE}.tiempo_analista ;;
  }
  dimension: tiempo_devolucion {
    type: string
    sql: ${TABLE}.tiempo_devolucion ;;
  }
  dimension: tiempo_escalamiento {
    type: string
    sql: ${TABLE}.tiempo_escalamiento ;;
  }
  dimension: tipologia_id {
    type: number
    sql: ${TABLE}.tipologia_id ;;
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
