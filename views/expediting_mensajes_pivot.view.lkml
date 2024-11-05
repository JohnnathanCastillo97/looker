view: expediting_mensajes_pivot {
  sql_table_name: bd_ic_cliente.expediting_mensajes_pivot ;;
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
  dimension: id_cabecera {
    type: number
    sql: ${TABLE}.id_cabecera ;;
  }
  dimension: id_receptor {
    type: number
    sql: ${TABLE}.id_receptor ;;
  }
  dimension: type_receptor {
    type: string
    sql: ${TABLE}.type_receptor ;;
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
