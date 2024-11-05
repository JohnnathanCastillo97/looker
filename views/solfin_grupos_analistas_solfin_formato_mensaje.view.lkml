view: solfin_grupos_analistas_solfin_formato_mensaje {
  sql_table_name: bd_ic_cliente.solfin_grupos_analistas_solfin_formato_mensaje ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: grupo_id {
    type: number
    sql: ${TABLE}.grupo_id ;;
  }
  dimension: tipologias_id {
    type: number
    sql: ${TABLE}.tipologias_id ;;
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
