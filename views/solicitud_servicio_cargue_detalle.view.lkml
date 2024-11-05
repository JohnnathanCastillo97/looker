view: solicitud_servicio_cargue_detalle {
  sql_table_name: bd_ic_cliente.solicitud_servicio_cargue_detalle ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: cuenta_mayor {
    type: string
    sql: ${TABLE}.cuenta_mayor ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: elemento_pep {
    type: string
    sql: ${TABLE}.elemento_pep ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fila_documento {
    type: number
    sql: ${TABLE}.fila_documento ;;
  }
  dimension: id_solicitud_posicion_cargue {
    type: number
    sql: ${TABLE}.id_solicitud_posicion_cargue ;;
  }
  dimension: id_solicitud_posicion_cargue_detalle {
    type: number
    sql: ${TABLE}.id_solicitud_posicion_cargue_detalle ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: orden_estadistica {
    type: string
    sql: ${TABLE}.orden_estadistica ;;
  }
  dimension: posicion_principal {
    type: number
    sql: ${TABLE}.posicion_principal ;;
  }
  dimension: resultado {
    type: string
    sql: ${TABLE}.resultado ;;
  }
  dimension: servicio {
    type: number
    sql: ${TABLE}.servicio ;;
  }
  dimension: um {
    type: string
    sql: ${TABLE}.um ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor_unitario {
    type: number
    sql: ${TABLE}.valor_unitario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
