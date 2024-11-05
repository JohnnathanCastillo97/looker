view: oferta_evaluacion_proveedor_resultado_tecnicos {
  sql_table_name: bd_ic_cliente.oferta_evaluacion_proveedor_resultado_tecnicos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bloqueo {
    type: string
    sql: ${TABLE}.bloqueo ;;
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
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_usuario_actualizador {
    type: number
    sql: ${TABLE}.id_usuario_actualizador ;;
  }
  dimension: id_usuario_creador {
    type: number
    sql: ${TABLE}.id_usuario_creador ;;
  }
  dimension: id_usuario_proveedor {
    type: number
    sql: ${TABLE}.id_usuario_proveedor ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: resultado_final {
    type: string
    sql: ${TABLE}.resultado_final ;;
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
