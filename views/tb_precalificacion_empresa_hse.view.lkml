view: tb_precalificacion_empresa_hse {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_hse ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto_arl {
    type: string
    sql: ${TABLE}.adjunto_arl ;;
  }
  dimension: adjunto_ruc {
    type: string
    sql: ${TABLE}.adjunto_ruc ;;
  }
  dimension_group: anio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.anio ;;
  }
  dimension: autoevaluacion_sgsst {
    type: string
    sql: ${TABLE}.autoevaluacion_sgsst ;;
  }
  dimension: cod_precalificacion_empresa {
    type: number
    sql: ${TABLE}.cod_precalificacion_empresa ;;
  }
  dimension: codigo_arl {
    type: number
    sql: ${TABLE}.codigo_arl ;;
  }
  dimension: codigo_ruc {
    type: number
    sql: ${TABLE}.codigo_ruc ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: puntaje_arl {
    type: number
    sql: ${TABLE}.puntaje_arl ;;
  }
  dimension: puntaje_ruc {
    type: number
    sql: ${TABLE}.puntaje_ruc ;;
  }
  dimension: registro_actualizacion {
    type: number
    sql: ${TABLE}.registro_actualizacion ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
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
