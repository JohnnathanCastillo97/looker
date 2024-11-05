view: paa_ejercicio_moneda {
  sql_table_name: bd_ic_cliente.paa_ejercicio_moneda ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_paa_ejercicio {
    type: number
    sql: ${TABLE}.id_paa_ejercicio ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: tasa_cambio {
    type: number
    sql: ${TABLE}.tasa_cambio ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
