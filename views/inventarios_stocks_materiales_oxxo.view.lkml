view: inventarios_stocks_materiales_oxxo {
  sql_table_name: bd_ic_cliente.inventarios_stocks_materiales_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: cantidad_inicial {
    type: number
    sql: ${TABLE}.cantidadInicial ;;
  }
  dimension: cantidad_inicial_mal_estado {
    type: number
    sql: ${TABLE}.cantidadInicialMalEstado ;;
  }
  dimension: cantidad_mal_estado {
    type: number
    sql: ${TABLE}.cantidadMalEstado ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: string
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: tiene_reutilizados {
    type: string
    sql: ${TABLE}.tieneReutilizados ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
