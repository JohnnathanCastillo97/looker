view: solfin_motivo_rechazo {
  sql_table_name: bd_ic_cliente.solfin_motivo_rechazo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo_rechazo {
    type: string
    sql: ${TABLE}.codigo_rechazo ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: motivo_rechazo {
    type: string
    sql: ${TABLE}.motivo_rechazo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
