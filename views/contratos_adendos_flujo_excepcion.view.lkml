view: contratos_adendos_flujo_excepcion {
  sql_table_name: bd_ic_cliente.contratos_adendos_flujo_excepcion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adendo_id {
    type: number
    sql: ${TABLE}.adendo_id ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: aprobacion_de {
    type: string
    sql: ${TABLE}.aprobacion_de ;;
  }
  dimension: cual {
    type: string
    sql: ${TABLE}.cual ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: flujo_excepcion {
    type: string
    sql: ${TABLE}.flujo_excepcion ;;
  }
  dimension: requiere_aprobacion {
    type: string
    sql: ${TABLE}.requiere_aprobacion ;;
  }
  dimension: requiere_revision {
    type: string
    sql: ${TABLE}.requiere_revision ;;
  }
  dimension: revision_de {
    type: string
    sql: ${TABLE}.revision_de ;;
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
