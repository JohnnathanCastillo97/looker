view: aoc_desempeo {
  sql_table_name: bd_ic_cliente.`aoc_desempeño` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividaddesc {
    type: string
    sql: ${TABLE}.actividaddesc ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: evaluacion_parcial {
    type: string
    sql: ${TABLE}.evaluacion_parcial ;;
  }
  dimension: id_aoc {
    type: number
    sql: ${TABLE}.id_aoc ;;
  }
  dimension: id_produc {
    type: number
    sql: ${TABLE}.id_produc ;;
  }
  dimension: tipo_evaluacion {
    type: string
    sql: ${TABLE}.tipo_evaluacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
