view: solfin_tipo_operacion {
  sql_table_name: bd_ic_cliente.solfin_tipo_operacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: numero_evento {
    type: string
    sql: ${TABLE}.numero_evento ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
