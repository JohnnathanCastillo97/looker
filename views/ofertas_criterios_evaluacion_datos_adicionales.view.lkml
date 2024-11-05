view: ofertas_criterios_evaluacion_datos_adicionales {
  sql_table_name: bd_ic_cliente.ofertas_criterios_evaluacion_datos_adicionales ;;
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
  dimension: forma_verificacion {
    type: string
    sql: ${TABLE}.forma_verificacion ;;
  }
  dimension: id_criterio_oferta {
    type: number
    sql: ${TABLE}.id_criterio_oferta ;;
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
