view: aoc_evaluadores {
  sql_table_name: bd_ic_cliente.aoc_evaluadores ;;
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
  dimension: id_aoc {
    type: number
    sql: ${TABLE}.id_aoc ;;
  }
  dimension: id_evaluador {
    type: number
    sql: ${TABLE}.id_evaluador ;;
  }
  dimension: tipo_evaluador {
    type: string
    sql: ${TABLE}.tipo_evaluador ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
