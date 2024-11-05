view: corona_registro_info_python {
  sql_table_name: bd_ic_cliente.corona_registro_info_python ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aplfz {
    type: string
    sql: ${TABLE}.Aplfz ;;
  }
  dimension: bstma {
    type: number
    sql: ${TABLE}.Bstma ;;
  }
  dimension: ekgrp {
    type: string
    sql: ${TABLE}.Ekgrp ;;
  }
  dimension: ekorg {
    type: string
    sql: ${TABLE}.Ekorg ;;
  }
  dimension: esokz {
    type: string
    sql: ${TABLE}.Esokz ;;
  }
  dimension: inco1 {
    type: string
    sql: ${TABLE}.Inco1 ;;
  }
  dimension: inco2 {
    type: string
    sql: ${TABLE}.Inco2 ;;
  }
  dimension: infnr {
    type: string
    sql: ${TABLE}.Infnr ;;
  }
  dimension: integracion {
    type: string
    sql: ${TABLE}.integracion ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.Lifnr ;;
  }
  dimension: loekz {
    type: string
    sql: ${TABLE}.Loekz ;;
  }
  dimension: maetnr {
    type: string
    sql: ${TABLE}.Maetnr ;;
  }
  dimension: mahn1 {
    type: number
    sql: ${TABLE}.Mahn1 ;;
  }
  dimension: mahn2 {
    type: number
    sql: ${TABLE}.Mahn2 ;;
  }
  dimension: mahn3 {
    type: number
    sql: ${TABLE}.Mahn3 ;;
  }
  dimension: meins {
    type: string
    sql: ${TABLE}.Meins ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: minbm {
    type: number
    sql: ${TABLE}.Minbm ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: mwskz {
    type: string
    sql: ${TABLE}.Mwskz ;;
  }
  dimension: netpr {
    type: number
    sql: ${TABLE}.Netpr ;;
  }
  dimension: norbm {
    type: number
    sql: ${TABLE}.Norbm ;;
  }
  dimension: peinh {
    type: string
    sql: ${TABLE}.Peinh ;;
  }
  dimension: prdat {
    type: string
    sql: ${TABLE}.Prdat ;;
  }
  dimension: txz01 {
    type: string
    sql: ${TABLE}.Txz01 ;;
  }
  dimension: uebto {
    type: number
    sql: ${TABLE}.Uebto ;;
  }
  dimension: untto {
    type: number
    sql: ${TABLE}.Untto ;;
  }
  dimension: waers {
    type: string
    sql: ${TABLE}.Waers ;;
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
