view: solicitud_tablero_encabezados {
  sql_table_name: bd_ic_cliente.solicitud_tablero_encabezados ;;
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
  dimension: id_riesgo {
    type: number
    sql: ${TABLE}.id_riesgo ;;
  }
  dimension: texto {
    type: string
    sql: ${TABLE}.texto ;;
  }
  dimension: texto2 {
    type: string
    sql: ${TABLE}.texto2 ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
