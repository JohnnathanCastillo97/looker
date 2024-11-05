view: solfin_tipo_evento_radian {
  sql_table_name: bd_ic_cliente.solfin_tipo_evento_radian ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: nombre_evento {
    type: string
    sql: ${TABLE}.nombre_evento ;;
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
