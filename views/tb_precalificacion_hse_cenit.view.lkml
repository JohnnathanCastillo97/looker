view: tb_precalificacion_hse_cenit {
  sql_table_name: bd_ic_cliente.tb_precalificacion_hse_cenit ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: riesgo_hse {
    type: string
    sql: ${TABLE}.riesgo_hse ;;
  }
  dimension: uso_buques {
    type: string
    sql: ${TABLE}.uso_buques ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
