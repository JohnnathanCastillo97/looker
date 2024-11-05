view: oferta_evaluacion_proveedor_resultado_tecnico_criterios {
  sql_table_name: bd_ic_cliente.oferta_evaluacion_proveedor_resultado_tecnico_criterios ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cabecera_resultado_tecnico {
    type: number
    sql: ${TABLE}.id_cabecera_resultado_tecnico ;;
  }
  dimension: id_criterio {
    type: number
    sql: ${TABLE}.id_criterio ;;
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
  measure: count {
    type: count
    drill_fields: [id]
  }
}
