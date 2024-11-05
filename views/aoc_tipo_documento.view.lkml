view: aoc_tipo_documento {
  sql_table_name: bd_ic_cliente.aoc_tipo_documento ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_aoc {
    type: number
    sql: ${TABLE}.id_aoc ;;
  }
  dimension: id_tipo_doc {
    type: number
    sql: ${TABLE}.id_tipo_doc ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: numero {
    type: string
    sql: ${TABLE}.numero ;;
  }
  dimension: posicion {
    type: string
    sql: ${TABLE}.posicion ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
  }
}
