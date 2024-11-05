view: mst_abogados {
  sql_table_name: bd_ic_cliente.mst_abogados ;;
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
  dimension_group: delete {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.delete_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_abogado {
    type: number
    sql: ${TABLE}.id_abogado ;;
  }
  dimension: ultimo {
    type: string
    sql: ${TABLE}.ultimo ;;
  }
  dimension_group: update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.update_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
