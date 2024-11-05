view: tb_precalificacion_financiera {
  sql_table_name: bd_ic_cliente.tb_precalificacion_financiera ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aplica_obra_civil {
    type: string
    sql: ${TABLE}.aplica_obra_civil ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: riesgo_financiero {
    type: string
    sql: ${TABLE}.riesgo_financiero ;;
  }
  dimension: tipo_proceso {
    type: string
    sql: ${TABLE}.tipo_proceso ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
