view: corona_maestra_materiales_centro {
  sql_table_name: bd_ic_cliente.corona_maestra_materiales_centro ;;
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
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: lvormc {
    type: string
    sql: ${TABLE}.Lvormc ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: mmsta {
    type: string
    sql: ${TABLE}.Mmsta ;;
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
