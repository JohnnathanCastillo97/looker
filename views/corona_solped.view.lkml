view: corona_solped {
  sql_table_name: bd_ic_cliente.corona_solped ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: afnam {
    type: string
    sql: ${TABLE}.Afnam ;;
  }
  dimension: badat {
    type: string
    sql: ${TABLE}.Badat ;;
  }
  dimension: banfn {
    type: number
    sql: ${TABLE}.Banfn ;;
  }
  dimension: bnfpo {
    type: string
    sql: ${TABLE}.Bnfpo ;;
  }
  dimension: ebakz {
    type: string
    sql: ${TABLE}.Ebakz ;;
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
  dimension: estkz {
    type: string
    sql: ${TABLE}.Estkz ;;
  }
  dimension: flief {
    type: string
    sql: ${TABLE}.Flief ;;
  }
  dimension: frgkz {
    type: string
    sql: ${TABLE}.Frgkz ;;
  }
  dimension: infnr {
    type: string
    sql: ${TABLE}.Infnr ;;
  }
  dimension: konnr {
    type: string
    sql: ${TABLE}.Konnr ;;
  }
  dimension: ktpnr {
    type: string
    sql: ${TABLE}.Ktpnr ;;
  }
  dimension: lfdat {
    type: string
    sql: ${TABLE}.Lfdat ;;
  }
  dimension: lgort {
    type: string
    sql: ${TABLE}.Lgort ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.Lifnr ;;
  }
  dimension: loekz {
    type: string
    sql: ${TABLE}.Loekz ;;
  }
  dimension: matkl {
    type: string
    sql: ${TABLE}.Matkl ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: meins {
    type: string
    sql: ${TABLE}.Meins ;;
  }
  dimension: menge {
    type: number
    sql: ${TABLE}.Menge ;;
  }
  dimension: menge1 {
    type: number
    sql: ${TABLE}.Menge1 ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: pstyp {
    type: string
    sql: ${TABLE}.Pstyp ;;
  }
  dimension: txz01 {
    type: string
    sql: ${TABLE}.Txz01 ;;
  }
  dimension: werks {
    type: string
    sql: ${TABLE}.Werks ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
