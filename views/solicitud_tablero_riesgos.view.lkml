view: solicitud_tablero_riesgos {
  sql_table_name: bd_ic_cliente.solicitud_tablero_riesgos ;;
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
  dimension: riesgo {
    type: string
    sql: ${TABLE}.riesgo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
