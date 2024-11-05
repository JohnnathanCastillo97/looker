view: ofertas_criterios_validacion_apertura_sobres {
  sql_table_name: bd_ic_cliente.ofertas_criterios_validacion_apertura_sobres ;;
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
  dimension: criterio_validacion {
    type: string
    sql: ${TABLE}.criterio_validacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: requerido {
    type: yesno
    sql: ${TABLE}.requerido ;;
  }
  dimension: tipo_validacion {
    type: string
    sql: ${TABLE}.tipo_validacion ;;
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
