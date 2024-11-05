view: tb_precalificacion_informacion_adicional_perenco {
  sql_table_name: bd_ic_cliente.tb_precalificacion_informacion_adicional_perenco ;;
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
  dimension: numero_proceso {
    type: string
    sql: ${TABLE}.numero_proceso ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
