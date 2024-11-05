view: tb_precalificacion_empresa_habilitacion {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_habilitacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: habilitado {
    type: string
    sql: ${TABLE}.habilitado ;;
  }
  dimension: id_comentario_cumplimiento {
    type: number
    sql: ${TABLE}.id_comentario_cumplimiento ;;
  }
  dimension: id_precalificacion_empresa {
    type: number
    sql: ${TABLE}.id_precalificacion_empresa ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
