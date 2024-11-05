view: prequalification_result_hse_peru {
  sql_table_name: bd_ic_cliente.prequalification_result_hse_peru ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: contenido {
    type: string
    sql: ${TABLE}.contenido ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: nitempxx {
    type: string
    sql: ${TABLE}.nitempxx ;;
  }
  dimension: pasa {
    type: string
    sql: ${TABLE}.pasa ;;
  }
  dimension: razonxxx {
    type: string
    sql: ${TABLE}.razonxxx ;;
  }
  dimension: respuesta {
    type: string
    sql: ${TABLE}.respuesta ;;
  }
  dimension: secuencia {
    type: number
    sql: ${TABLE}.secuencia ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
