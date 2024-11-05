view: corona_pedido_contrato_cabecera_johnnathan {
  sql_table_name: bd_ic_cliente.corona_pedido_contrato_cabecera_johnnathan ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: aedat {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Aedat ;;
  }
  dimension: ausnr {
    type: string
    sql: ${TABLE}.Ausnr ;;
  }
  dimension: bsart {
    type: string
    sql: ${TABLE}.Bsart ;;
  }
  dimension: bstyp {
    type: string
    sql: ${TABLE}.Bstyp ;;
  }
  dimension: bukrs {
    type: string
    sql: ${TABLE}.Bukrs ;;
  }
  dimension: ebeln {
    type: string
    sql: ${TABLE}.Ebeln ;;
  }
  dimension: ekgrp {
    type: string
    sql: ${TABLE}.Ekgrp ;;
  }
  dimension: ekorg {
    type: string
    sql: ${TABLE}.Ekorg ;;
  }
  dimension: ernam {
    type: string
    sql: ${TABLE}.Ernam ;;
  }
  dimension: frgke {
    type: string
    sql: ${TABLE}.Frgke ;;
  }
  dimension: ihrez {
    type: string
    sql: ${TABLE}.Ihrez ;;
  }
  dimension: inco1 {
    type: string
    sql: ${TABLE}.Inco1 ;;
  }
  dimension: inco2 {
    type: string
    sql: ${TABLE}.Inco2 ;;
  }
  dimension: kdatb {
    type: string
    sql: ${TABLE}.Kdatb ;;
  }
  dimension: kdate {
    type: string
    sql: ${TABLE}.Kdate ;;
  }
  dimension: ktwrt {
    type: number
    sql: ${TABLE}.Ktwrt ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.Lifnr ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: unsez {
    type: string
    sql: ${TABLE}.Unsez ;;
  }
  dimension: waers {
    type: string
    sql: ${TABLE}.Waers ;;
  }
  dimension: zterm {
    type: string
    sql: ${TABLE}.Zterm ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
