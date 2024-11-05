view: requisicion_justificacion {
  sql_table_name: bd_ic_cliente.requisicion_justificacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_requisicion {
    type: number
    sql: ${TABLE}.id_requisicion ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
