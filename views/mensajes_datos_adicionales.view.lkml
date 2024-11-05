view: mensajes_datos_adicionales {
  sql_table_name: bd_ic_cliente.mensajes_datos_adicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjuntos {
    type: string
    sql: ${TABLE}.adjuntos ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_consolidacion {
    type: string
    sql: ${TABLE}.estado_consolidacion ;;
  }
  dimension: id_consolidacion {
    type: number
    sql: ${TABLE}.id_consolidacion ;;
  }
  dimension: id_mensaje {
    type: number
    sql: ${TABLE}.id_mensaje ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }
  dimension: pregunta {
    type: string
    sql: ${TABLE}.pregunta ;;
  }
  dimension: respuesta {
    type: string
    sql: ${TABLE}.respuesta ;;
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
