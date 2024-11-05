view: evaluacion_pregunta {
  sql_table_name: bd_ic_cliente.evaluacion_pregunta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cumple {
    type: number
    sql: ${TABLE}.cumple ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_evaluacion_clase {
    type: number
    sql: ${TABLE}.id_evaluacion_clase ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: suma {
    type: number
    sql: ${TABLE}.suma ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
