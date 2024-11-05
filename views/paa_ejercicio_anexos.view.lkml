view: paa_ejercicio_anexos {
  sql_table_name: bd_ic_cliente.paa_ejercicio_anexos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.estado ;;
  }
  dimension: id_ejercicio {
    type: number
    sql: ${TABLE}.id_ejercicio ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  dimension: url_anexo {
    type: string
    sql: ${TABLE}.url_anexo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
