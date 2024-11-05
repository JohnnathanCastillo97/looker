view: comite_solicitudes_info_adicional_moneda {
  sql_table_name: bd_ic_cliente.comite_solicitudes_info_adicional_moneda ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_salarios_minimos {
    type: number
    sql: ${TABLE}.cantidad_salarios_minimos ;;
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
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: smmvl {
    type: number
    sql: ${TABLE}.SMMVL ;;
  }
  dimension: tasa_cambio {
    type: number
    sql: ${TABLE}.tasa_cambio ;;
  }
  dimension: tipo_registro {
    type: string
    sql: ${TABLE}.tipo_registro ;;
  }
  dimension: tipo_valor {
    type: string
    sql: ${TABLE}.tipo_valor ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  dimension: valor_total_tazado {
    type: number
    sql: ${TABLE}.valor_total_tazado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
