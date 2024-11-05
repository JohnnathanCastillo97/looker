view: prequalification_companies_hse_certificados {
  sql_table_name: bd_ic_cliente.prequalification_companies_hse_certificados ;;

  dimension: certificado_sistema_gestion_hse {
    type: string
    sql: ${TABLE}.certificadoSistemaGestionHSE ;;
  }
  dimension: certificados_hse {
    type: string
    sql: ${TABLE}.certificados_hse ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  measure: count {
    type: count
  }
}
