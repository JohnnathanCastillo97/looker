view: clientes_vs_paises {
  sql_table_name: bd_ic_cliente.clientes_vs_paises ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_pais {
    type: number
    sql: ${TABLE}.id_pais ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
