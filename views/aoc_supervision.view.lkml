view: aoc_supervision {
  sql_table_name: bd_ic_cliente.aoc_supervision ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aoc_id_aoc {
    type: number
    value_format_name: id
    sql: ${TABLE}.aoc_id_aoc ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_interventor {
    type: number
    sql: ${TABLE}.id_interventor ;;
  }
  dimension: id_supervisor {
    type: number
    sql: ${TABLE}.id_supervisor ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
