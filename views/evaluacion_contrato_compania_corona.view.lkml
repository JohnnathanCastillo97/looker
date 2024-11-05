view: evaluacion_contrato_compania_corona {
  sql_table_name: bd_ic_cliente.evaluacion_contrato_compania_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: compania {
    type: string
    sql: ${TABLE}.compania ;;
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
