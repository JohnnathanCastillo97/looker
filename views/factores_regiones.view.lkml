view: factores_regiones {
  sql_table_name: bd_ic_cliente.factores_regiones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: factor {
    type: string
    sql: ${TABLE}.factor ;;
  }
  dimension: factor_id {
    type: string
    sql: ${TABLE}.factor_id ;;
  }
  dimension: region_id {
    type: string
    sql: ${TABLE}.region_id ;;
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
