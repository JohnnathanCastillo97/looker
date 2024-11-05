view: solpeds_sap {
  sql_table_name: bd_ic_cliente.solpeds_sap ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: banfn {
    type: number
    sql: ${TABLE}.Banfn ;;
  }
  dimension: banpr {
    type: number
    sql: ${TABLE}.Banpr ;;
  }
  dimension: bednr {
    type: string
    sql: ${TABLE}.Bednr ;;
  }
  dimension: bnfpo {
    type: number
    sql: ${TABLE}.Bnfpo ;;
  }
  dimension: cab_compl {
    type: string
    sql: ${TABLE}.CabCompl ;;
  }
  dimension: ekgrp {
    type: string
    sql: ${TABLE}.ekgrp ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: frgkz {
    type: number
    sql: ${TABLE}.Frgkz ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: loekz {
    type: string
    sql: ${TABLE}.Loekz ;;
  }
  dimension: matkl {
    type: string
    sql: ${TABLE}.matkl ;;
  }
  dimension: preis {
    type: number
    sql: ${TABLE}.Preis ;;
  }
  dimension: statu {
    type: string
    sql: ${TABLE}.Statu ;;
  }
  dimension: txz01 {
    type: string
    sql: ${TABLE}.Txz01 ;;
  }
  dimension: waers {
    type: string
    sql: ${TABLE}.Waers ;;
  }
  dimension: werks {
    type: number
    sql: ${TABLE}.werks ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
