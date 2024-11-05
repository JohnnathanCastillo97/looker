view: corona_solicitudes_liquidacion {
  sql_table_name: bd_ic_cliente.corona_solicitudes_liquidacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ambiente {
    type: string
    sql: ${TABLE}.ambiente ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descargable {
    type: string
    sql: ${TABLE}.descargable ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_solicitud {
    type: string
    sql: ${TABLE}.estado_solicitud ;;
  }
  dimension: factura_asociada {
    type: string
    sql: ${TABLE}.factura_asociada ;;
  }
  dimension_group: fecha_gestionado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_gestionado ;;
  }
  dimension: grupo {
    type: number
    sql: ${TABLE}.grupo ;;
  }
  dimension: liquidacion_consignacion_id {
    type: number
    sql: ${TABLE}.liquidacion_consignacion_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
