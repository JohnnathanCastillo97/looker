view: tb_precalificacion_hse_mansarovar {
  sql_table_name: bd_ic_cliente.tb_precalificacion_hse_mansarovar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: calificacion {
    type: string
    sql: ${TABLE}.calificacion ;;
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
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: razon_no_cumplimiento {
    type: string
    sql: ${TABLE}.razon_no_cumplimiento ;;
  }
  dimension: resultado {
    type: string
    sql: ${TABLE}.resultado ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_calificador {
    type: number
    sql: ${TABLE}.usuario_calificador ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  dimension: vigencia {
    type: string
    sql: ${TABLE}.vigencia ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
