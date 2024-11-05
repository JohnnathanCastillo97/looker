view: profesionales_solicitud {
  sql_table_name: bd_ic_cliente.profesionales_solicitud ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado_profesional {
    type: string
    sql: ${TABLE}.estado_profesional ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
