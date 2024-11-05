view: solfin_porcentaje {
  sql_table_name: bd_ic_cliente.solfin_porcentaje ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: conversion {
    type: number
    sql: ${TABLE}.conversion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: tasa {
    type: number
    sql: ${TABLE}.tasa ;;
  }
  dimension: tasa_rcf {
    type: number
    sql: ${TABLE}.tasaRCF ;;
  }
  dimension: tipo_formula {
    type: string
    sql: ${TABLE}.tipo_formula ;;
  }
  dimension: uno_dias {
    type: number
    sql: ${TABLE}.unoDias ;;
  }
  dimension: uno_tasa {
    type: number
    sql: ${TABLE}.unoTasa ;;
  }
  dimension: uno_tasa_rcf {
    type: number
    sql: ${TABLE}.unoTasaRCF ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
