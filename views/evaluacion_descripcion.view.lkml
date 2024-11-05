view: evaluacion_descripcion {
  sql_table_name: bd_ic_cliente.evaluacion_descripcion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_evaluacion_contrato_usuario {
    type: number
    sql: ${TABLE}.id_evaluacion_contrato_usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
