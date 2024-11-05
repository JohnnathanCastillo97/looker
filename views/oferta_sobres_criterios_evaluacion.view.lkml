view: oferta_sobres_criterios_evaluacion {
  sql_table_name: bd_ic_cliente.oferta_sobres_criterios_evaluacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: criterio {
    type: string
    sql: ${TABLE}.criterio ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_modifica {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modifica ;;
  }
  dimension_group: fecha_registra {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registra ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_sobre {
    type: number
    sql: ${TABLE}.id_sobre ;;
  }
  dimension: parametros {
    type: string
    sql: ${TABLE}.parametros ;;
  }
  dimension: tipo_evaluacion {
    type: string
    sql: ${TABLE}.tipo_evaluacion ;;
  }
  dimension: usuario_modifica {
    type: number
    sql: ${TABLE}.usuario_modifica ;;
  }
  dimension: usuario_registra {
    type: number
    sql: ${TABLE}.usuario_registra ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
