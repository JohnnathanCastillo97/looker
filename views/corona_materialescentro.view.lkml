view: corona_materialescentro {
  sql_table_name: bd_ic_cliente.`Corona_materiales/centro` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ekgrp {
    type: string
    sql: ${TABLE}.Ekgrp ;;
  }
  dimension: maktx {
    type: string
    sql: ${TABLE}.Maktx ;;
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
  dimension: werks {
    type: string
    sql: ${TABLE}.Werks ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
