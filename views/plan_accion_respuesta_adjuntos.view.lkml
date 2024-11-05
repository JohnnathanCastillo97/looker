view: plan_accion_respuesta_adjuntos {
  sql_table_name: bd_ic_cliente.plan_accion_respuesta_adjuntos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: file_path {
    type: string
    sql: ${TABLE}.file_path ;;
  }
  dimension: id_plan_accion_respuesta {
    type: string
    sql: ${TABLE}.id_plan_accion_respuesta ;;
  }
  dimension: nombre_adjunto {
    type: string
    sql: ${TABLE}.nombre_adjunto ;;
  }
  dimension: peso_adjunto {
    type: number
    sql: ${TABLE}.peso_adjunto ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
