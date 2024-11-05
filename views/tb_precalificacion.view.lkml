view: tb_precalificacion {
  sql_table_name: bd_ic_cliente.tb_precalificacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: ambiental {
    type: string
    sql: ${TABLE}.ambiental ;;
  }
  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: desempeno {
    type: string
    sql: ${TABLE}.desempeno ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_estimada_cierre {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaEstimadaCierre ;;
  }
  dimension_group: fecha_finalizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaFinalizacion ;;
  }
  dimension_group: fecha_seleccion_experiencias {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaSeleccionExperiencias ;;
  }
  dimension_group: fecha_verificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaVerificacion ;;
  }
  dimension: financiera {
    type: string
    sql: ${TABLE}.financiera ;;
  }
  dimension: flujo {
    type: number
    sql: ${TABLE}.flujo ;;
  }
  dimension: hse {
    type: string
    sql: ${TABLE}.hse ;;
  }
  dimension: legal {
    type: string
    sql: ${TABLE}.legal ;;
  }
  dimension: listas_restrictivas {
    type: string
    sql: ${TABLE}.listas_restrictivas ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: presupuesto {
    type: number
    sql: ${TABLE}.presupuesto ;;
  }
  dimension: registro_actualizacion {
    type: number
    sql: ${TABLE}.registro_actualizacion ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension: relacionamiento {
    type: string
    sql: ${TABLE}.relacionamiento ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: solped {
    type: string
    sql: ${TABLE}.solped ;;
  }
  dimension: sst {
    type: string
    sql: ${TABLE}.sst ;;
  }
  dimension: subestado {
    type: string
    sql: ${TABLE}.subestado ;;
  }
  dimension: tecnica {
    type: string
    sql: ${TABLE}.tecnica ;;
  }
  dimension: trm {
    type: number
    sql: ${TABLE}.trm ;;
  }
  dimension_group: ultima_precalificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ultima_precalificacion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: verificacion_cumplimiento {
    type: string
    sql: ${TABLE}.verificacionCumplimiento ;;
  }
  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
  dimension: version_financiera {
    type: string
    sql: ${TABLE}.versionFinanciera ;;
  }
  dimension: version_hse {
    type: string
    sql: ${TABLE}.versionHSE ;;
  }
  dimension: version_listas {
    type: string
    sql: ${TABLE}.versionListas ;;
  }
  dimension: version_tecnica {
    type: string
    sql: ${TABLE}.versionTecnica ;;
  }
  dimension: version_trm {
    type: string
    sql: ${TABLE}.versionTrm ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
