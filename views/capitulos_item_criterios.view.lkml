view: capitulos_item_criterios {
  sql_table_name: bd_ic_cliente.capitulos_item_criterios ;;
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
  dimension: criterio {
    type: string
    sql: ${TABLE}.criterio ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_item {
    type: number
    sql: ${TABLE}.id_item ;;
  }
  dimension: id_usuario_creador {
    type: number
    sql: ${TABLE}.id_usuario_creador ;;
  }
  dimension: otros {
    type: string
    sql: ${TABLE}.otros ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
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
