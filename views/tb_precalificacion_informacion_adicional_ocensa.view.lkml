view: tb_precalificacion_informacion_adicional_ocensa {
  sql_table_name: bd_ic_cliente.tb_precalificacion_informacion_adicional_ocensa ;;
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
  dimension: cod_usuario_evaluador {
    type: number
    sql: ${TABLE}.cod_usuario_evaluador ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }
  dimension: tipo_servicio {
    type: number
    sql: ${TABLE}.tipo_servicio ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
