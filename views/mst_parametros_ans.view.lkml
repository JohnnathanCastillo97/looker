view: mst_parametros_ans {
  sql_table_name: bd_ic_cliente.mst_parametros_ans ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: area_asignada {
    type: string
    sql: ${TABLE}.area_asignada ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: nombre_ans {
    type: string
    sql: ${TABLE}.nombre_ans ;;
  }
  dimension: nombre_area {
    type: string
    sql: ${TABLE}.nombre_area ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor_ans {
    type: string
    sql: ${TABLE}.valor_ans ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
