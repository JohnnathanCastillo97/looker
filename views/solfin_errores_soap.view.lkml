view: solfin_errores_soap {
  sql_table_name: bd_ic_cliente.solfin_errores_soap ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  dimension: interacion {
    type: string
    sql: ${TABLE}.interacion ;;
  }
  dimension: params {
    type: string
    sql: ${TABLE}.params ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
