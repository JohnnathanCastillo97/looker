view: api_consumidor_registro {
  sql_table_name: bd_ic_cliente.api_consumidor_registro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividad_comercial {
    type: string
    sql: ${TABLE}.actividad_comercial ;;
  }
  dimension: aplica_credito {
    type: string
    sql: ${TABLE}.aplica_credito ;;
  }
  dimension: aplicacion {
    type: string
    sql: ${TABLE}.aplicacion ;;
  }
  dimension: codigo_sap {
    type: string
    sql: ${TABLE}.codigo_sap ;;
  }
  dimension: contacto {
    type: string
    sql: ${TABLE}.contacto ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_solicitud {
    type: string
    sql: ${TABLE}.estado_solicitud ;;
  }
  dimension_group: fecha_solicitud {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_solicitud ;;
  }
  dimension: identificacion {
    type: string
    sql: ${TABLE}.identificacion ;;
  }
  dimension: industria {
    type: string
    sql: ${TABLE}.industria ;;
  }
  dimension: informe_representante_ventas {
    type: string
    sql: ${TABLE}.informe_representante_ventas ;;
  }
  dimension: numero_solicitud {
    type: string
    sql: ${TABLE}.numero_solicitud ;;
  }
  dimension: numero_ticket {
    type: string
    sql: ${TABLE}.numero_ticket ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: referenciado {
    type: string
    sql: ${TABLE}.referenciado ;;
  }
  dimension: sector {
    type: string
    sql: ${TABLE}.sector ;;
  }
  dimension: solicitante {
    type: string
    sql: ${TABLE}.solicitante ;;
  }
  dimension: telefono {
    type: number
    sql: ${TABLE}.telefono ;;
  }
  dimension: tipo_cliente {
    type: string
    sql: ${TABLE}.tipo_cliente ;;
  }
  dimension: tipo_persona {
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }
  dimension: total_cupo_solicitado {
    type: number
    sql: ${TABLE}.totalCupoSolicitado ;;
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
