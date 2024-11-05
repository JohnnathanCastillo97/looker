view: tb_precalificacion_empresa_hse_ocensa {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_hse_ocensa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anio_arl {
    type: number
    sql: ${TABLE}.anio_arl ;;
  }
  dimension: cod_precalificacion_empresa {
    type: number
    sql: ${TABLE}.cod_precalificacion_empresa ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: criterios {
    type: string
    sql: ${TABLE}.criterios ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: puntaje_arl {
    type: number
    sql: ${TABLE}.puntaje_arl ;;
  }
  dimension: puntaje_para_calificar {
    type: number
    sql: ${TABLE}.puntaje_para_calificar ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension: tasa_accidentalidad {
    type: string
    sql: ${TABLE}.tasa_accidentalidad ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
