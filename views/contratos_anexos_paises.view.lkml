view: contratos_anexos_paises {
  sql_table_name: bd_ic_cliente.contratos_anexos_paises ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: abogado_id {
    type: number
    sql: ${TABLE}.abogado_id ;;
  }
  dimension: adendo_id {
    type: number
    sql: ${TABLE}.adendo_id ;;
  }
  dimension: agreement_events {
    type: string
    sql: ${TABLE}.agreement_events ;;
  }
  dimension: agreement_id {
    type: string
    sql: ${TABLE}.agreement_id ;;
  }
  dimension: contrato_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contrato_id ;;
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
  dimension_group: fecha_firma {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_firma ;;
  }
  dimension: nombre_anexo {
    type: string
    sql: ${TABLE}.nombre_anexo ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: revision {
    type: string
    sql: ${TABLE}.revision ;;
  }
  dimension: ruta_anexo {
    type: string
    sql: ${TABLE}.ruta_anexo ;;
  }
  dimension: sociedad_pais_id {
    type: number
    sql: ${TABLE}.sociedad_pais_id ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos.id, usuarios.username, usuarios.id]
  }
}
