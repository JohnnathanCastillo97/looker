view: evaluacion_contrato_division_corona {
  sql_table_name: bd_ic_cliente.evaluacion_contrato_division_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }
  dimension: id_evaluacion_contrato {
    type: number
    sql: ${TABLE}.id_evaluacion_contrato ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
