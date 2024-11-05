view: tb_precalificacion_empresa_resultados {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_resultados ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: desempeno {
    type: string
    sql: ${TABLE}.desempeno ;;
  }
  dimension: financiera {
    type: string
    sql: ${TABLE}.financiera ;;
  }
  dimension: hse {
    type: string
    sql: ${TABLE}.hse ;;
  }
  dimension: legal {
    type: string
    sql: ${TABLE}.legal ;;
  }
  dimension: listas {
    type: string
    sql: ${TABLE}.listas ;;
  }
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  dimension: relacionamiento {
    type: string
    sql: ${TABLE}.relacionamiento ;;
  }
  dimension: solped {
    type: string
    sql: ${TABLE}.solped ;;
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
