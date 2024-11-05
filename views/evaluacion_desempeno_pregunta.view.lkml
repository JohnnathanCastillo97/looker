view: evaluacion_desempeno_pregunta {
  sql_table_name: bd_ic_cliente.evaluacion_desempeno_pregunta ;;
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
  dimension: id_criterio {
    type: number
    sql: ${TABLE}.id_criterio ;;
  }
  dimension: opciones {
    type: string
    sql: ${TABLE}.opciones ;;
  }
  dimension: peso {
    type: number
    sql: ${TABLE}.peso ;;
  }
  dimension: pregunta {
    type: string
    sql: ${TABLE}.pregunta ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
