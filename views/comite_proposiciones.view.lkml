view: comite_proposiciones {
  sql_table_name: bd_ic_cliente.comite_proposiciones ;;
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
  dimension: decision {
    type: string
    sql: ${TABLE}.decision ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_comite {
    type: number
    sql: ${TABLE}.id_comite ;;
  }
  dimension: id_usuario_creador {
    type: number
    sql: ${TABLE}.id_usuario_creador ;;
  }
  dimension: miembros_decision {
    type: number
    sql: ${TABLE}.miembros_decision ;;
  }
  dimension: nombre_documento {
    type: string
    sql: ${TABLE}.nombre_documento ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: tema {
    type: string
    sql: ${TABLE}.tema ;;
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
