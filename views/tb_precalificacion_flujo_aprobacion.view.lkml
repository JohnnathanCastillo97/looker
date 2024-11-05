view: tb_precalificacion_flujo_aprobacion {
  sql_table_name: bd_ic_cliente.tb_precalificacion_flujo_aprobacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: financiera {
    type: string
    sql: ${TABLE}.financiera ;;
  }
  dimension: hse {
    type: string
    sql: ${TABLE}.hse ;;
  }
  dimension: listas {
    type: string
    sql: ${TABLE}.listas ;;
  }
  dimension: precalificacion_id {
    type: number
    sql: ${TABLE}.precalificacionId ;;
  }
  dimension: tecnica {
    type: string
    sql: ${TABLE}.tecnica ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
