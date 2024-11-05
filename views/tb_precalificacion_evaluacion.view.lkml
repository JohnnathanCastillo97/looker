view: tb_precalificacion_evaluacion {
  sql_table_name: bd_ic_cliente.tb_precalificacion_evaluacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: evaluacion {
    type: string
    sql: ${TABLE}.evaluacion ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: registro_actualizacion {
    type: number
    sql: ${TABLE}.registro_actualizacion ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension: tabla {
    type: string
    sql: ${TABLE}.tabla ;;
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
