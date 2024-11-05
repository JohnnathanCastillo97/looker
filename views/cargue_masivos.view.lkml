view: cargue_masivos {
  sql_table_name: bd_ic_cliente.cargue_masivos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: columna {
    type: string
    sql: ${TABLE}.columna ;;
  }
  dimension: columna1 {
    type: string
    sql: ${TABLE}.columna1 ;;
  }
  dimension: columna10 {
    type: string
    sql: ${TABLE}.columna10 ;;
  }
  dimension: columna11 {
    type: string
    sql: ${TABLE}.columna11 ;;
  }
  dimension: columna12 {
    type: string
    sql: ${TABLE}.columna12 ;;
  }
  dimension: columna13 {
    type: string
    sql: ${TABLE}.columna13 ;;
  }
  dimension: columna14 {
    type: string
    sql: ${TABLE}.columna14 ;;
  }
  dimension: columna15 {
    type: string
    sql: ${TABLE}.columna15 ;;
  }
  dimension: columna16 {
    type: string
    sql: ${TABLE}.columna16 ;;
  }
  dimension: columna17 {
    type: string
    sql: ${TABLE}.columna17 ;;
  }
  dimension: columna18 {
    type: string
    sql: ${TABLE}.columna18 ;;
  }
  dimension: columna19 {
    type: string
    sql: ${TABLE}.columna19 ;;
  }
  dimension: columna2 {
    type: string
    sql: ${TABLE}.columna2 ;;
  }
  dimension: columna20 {
    type: string
    sql: ${TABLE}.columna20 ;;
  }
  dimension: columna21 {
    type: string
    sql: ${TABLE}.columna21 ;;
  }
  dimension: columna22 {
    type: string
    sql: ${TABLE}.columna22 ;;
  }
  dimension: columna23 {
    type: string
    sql: ${TABLE}.columna23 ;;
  }
  dimension: columna24 {
    type: string
    sql: ${TABLE}.columna24 ;;
  }
  dimension: columna25 {
    type: string
    sql: ${TABLE}.columna25 ;;
  }
  dimension: columna26 {
    type: string
    sql: ${TABLE}.columna26 ;;
  }
  dimension: columna27 {
    type: string
    sql: ${TABLE}.columna27 ;;
  }
  dimension: columna28 {
    type: string
    sql: ${TABLE}.columna28 ;;
  }
  dimension: columna29 {
    type: string
    sql: ${TABLE}.columna29 ;;
  }
  dimension: columna3 {
    type: string
    sql: ${TABLE}.columna3 ;;
  }
  dimension: columna30 {
    type: string
    sql: ${TABLE}.columna30 ;;
  }
  dimension: columna4 {
    type: string
    sql: ${TABLE}.columna4 ;;
  }
  dimension: columna5 {
    type: string
    sql: ${TABLE}.columna5 ;;
  }
  dimension: columna6 {
    type: string
    sql: ${TABLE}.columna6 ;;
  }
  dimension: columna7 {
    type: string
    sql: ${TABLE}.columna7 ;;
  }
  dimension: columna8 {
    type: string
    sql: ${TABLE}.columna8 ;;
  }
  dimension: columna9 {
    type: string
    sql: ${TABLE}.columna9 ;;
  }
  dimension: ejemplo {
    type: string
    sql: ${TABLE}.ejemplo ;;
  }
  dimension: empresa {
    type: number
    sql: ${TABLE}.empresa ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cargue {
    type: number
    sql: ${TABLE}.id_cargue ;;
  }
  dimension: modulo {
    type: string
    sql: ${TABLE}.modulo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
