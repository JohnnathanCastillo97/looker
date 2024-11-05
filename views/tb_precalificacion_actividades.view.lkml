view: tb_precalificacion_actividades {
  sql_table_name: bd_ic_cliente.tb_precalificacion_actividades ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_actividad {
    type: number
    sql: ${TABLE}.cod_actividad ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
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
  dimension: registro_actualizacion {
    type: number
    sql: ${TABLE}.registro_actualizacion ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension: riesgo {
    type: number
    sql: ${TABLE}.riesgo ;;
  }
  dimension: riesgo_descripcion {
    type: string
    sql: ${TABLE}.riesgo_descripcion ;;
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
