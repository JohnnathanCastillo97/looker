view: comite_solicitudes_contratacion_adicional {
  sql_table_name: bd_ic_cliente.comite_solicitudes_contratacion_adicional ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comite_evaluador {
    type: string
    sql: ${TABLE}.comite_evaluador ;;
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
  dimension: forma_pago {
    type: string
    sql: ${TABLE}.forma_pago ;;
  }
  dimension: garantias_polizas {
    type: string
    sql: ${TABLE}.garantias_polizas ;;
  }
  dimension: gastos_reembolsables {
    type: string
    sql: ${TABLE}.gastos_reembolsables ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: limite_desviacion {
    type: string
    sql: ${TABLE}.limite_desviacion ;;
  }
  dimension: modalidad_cotizacion {
    type: string
    sql: ${TABLE}.modalidad_cotizacion ;;
  }
  dimension: tipo_persona {
    type: string
    sql: ${TABLE}.tipo_persona ;;
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
