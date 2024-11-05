view: contratos_adendos_linea {
  sql_table_name: bd_ic_cliente.contratos_adendos_linea ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: abogado_id {
    type: string
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
  dimension: analisis_gestion {
    type: string
    sql: ${TABLE}.analisis_gestion ;;
  }
  dimension: calificacion_desempeno {
    type: string
    sql: ${TABLE}.calificacion_desempeno ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension_group: fecha_aprobacion_firma {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion_firma ;;
  }
  dimension_group: fecha_cargue_firma {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_cargue_firma ;;
  }
  dimension_group: fecha_firma {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_firma ;;
  }
  dimension_group: fecha_firme {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_firme ;;
  }
  dimension_group: fecha_revision_areas {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_revision_areas ;;
  }
  dimension_group: fecha_revision_contratista {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_revision_contratista ;;
  }
  dimension: linea_id {
    type: number
    sql: ${TABLE}.linea_id ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: oferta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oferta_id ;;
  }
  dimension: otros {
    type: string
    sql: ${TABLE}.otros ;;
  }
  dimension: polizas_obligatorias {
    type: string
    sql: ${TABLE}.polizas_obligatorias ;;
  }
  dimension: requiere_polizas {
    type: string
    sql: ${TABLE}.requiere_polizas ;;
  }
  dimension: supervisor_abogado_id {
    type: string
    sql: ${TABLE}.supervisor_abogado_id ;;
  }
  dimension: temas_excepcionales {
    type: string
    sql: ${TABLE}.temas_excepcionales ;;
  }
  dimension: usuarios_nombrados {
    type: string
    sql: ${TABLE}.usuarios_nombrados ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ofertas.id]
  }
}
