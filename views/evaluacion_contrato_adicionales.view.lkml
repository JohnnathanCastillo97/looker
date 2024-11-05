view: evaluacion_contrato_adicionales {
  sql_table_name: bd_ic_cliente.evaluacion_contrato_adicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: evaluacion_contrato_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.evaluacion_contrato_id ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id, evaluacion_contrato.id]
  }
}
