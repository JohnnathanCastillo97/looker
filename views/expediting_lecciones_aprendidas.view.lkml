view: expediting_lecciones_aprendidas {
  sql_table_name: bd_ic_cliente.expediting_lecciones_aprendidas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: create_user {
    type: number
    sql: ${TABLE}.create_user ;;
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
  dimension: etapa_proceso {
    type: string
    sql: ${TABLE}.etapa_proceso ;;
  }
  dimension: id_expediting {
    type: number
    sql: ${TABLE}.id_expediting ;;
  }
  dimension: leccion_aprendida {
    type: string
    sql: ${TABLE}.leccion_aprendida ;;
  }
  dimension: type_leccion {
    type: string
    sql: ${TABLE}.type_leccion ;;
  }
  dimension: update_user {
    type: number
    sql: ${TABLE}.update_user ;;
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
