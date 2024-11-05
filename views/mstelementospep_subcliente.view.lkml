view: mstelementospep_subcliente {
  sql_table_name: bd_ic_cliente.mstelementospep_subcliente ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_elementopep {
    type: number
    sql: ${TABLE}.cod_elementopep ;;
  }
  dimension: cod_subcliente {
    type: number
    sql: ${TABLE}.cod_subcliente ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
