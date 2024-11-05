view: tb_precalificacion_tasa_cambio {
  sql_table_name: bd_ic_cliente.tb_precalificacion_tasa_cambio ;;
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
  dimension: tasa {
    type: string
    sql: ${TABLE}.tasa ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
