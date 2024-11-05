view: tb_precalificacion_hse_independence {
  sql_table_name: bd_ic_cliente.tb_precalificacion_hse_independence ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: precalificacion_id {
    type: number
    sql: ${TABLE}.precalificacionId ;;
  }
  dimension: riesgo_hse {
    type: string
    sql: ${TABLE}.riesgo_hse ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
