view: prequalification_desempeno {
  sql_table_name: bd_ic_cliente.prequalification_desempeno ;;

  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: respuesta {
    type: string
    sql: ${TABLE}.respuesta ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: titulo_pregunta {
    type: string
    sql: ${TABLE}.titulo_pregunta ;;
  }
  measure: count {
    type: count
  }
}
