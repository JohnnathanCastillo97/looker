view: comite_solicitudes_comite_adicionales {
  sql_table_name: bd_ic_cliente.comite_solicitudes_comite_adicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: alcance {
    type: string
    sql: ${TABLE}.alcance ;;
  }
  dimension: contratista {
    type: string
    sql: ${TABLE}.contratista ;;
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
  dimension: filial {
    type: string
    sql: ${TABLE}.filial ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: objeto_contrato {
    type: string
    sql: ${TABLE}.objeto_contrato ;;
  }
  dimension: otros {
    type: string
    sql: ${TABLE}.otros ;;
  }
  dimension: plazo_contrato {
    type: number
    sql: ${TABLE}.plazo_contrato ;;
  }
  dimension: unidad_tiempo_plazo_contrato {
    type: string
    sql: ${TABLE}.unidad_tiempo_plazo_contrato ;;
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
