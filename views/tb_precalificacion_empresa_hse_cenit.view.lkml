view: tb_precalificacion_empresa_hse_cenit {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_hse_cenit ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accidentes {
    type: number
    sql: ${TABLE}.accidentes ;;
  }
  dimension: adjunto_arl {
    type: string
    sql: ${TABLE}.adjunto_arl ;;
  }
  dimension: adjunto_ruc {
    type: string
    sql: ${TABLE}.adjunto_ruc ;;
  }
  dimension: anexo_accidentes {
    type: string
    sql: ${TABLE}.anexo_accidentes ;;
  }
  dimension_group: anio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.anio ;;
  }
  dimension: anio_sgsst {
    type: string
    sql: ${TABLE}.anio_sgsst ;;
  }
  dimension: anio_sgsst_listado {
    type: string
    sql: ${TABLE}.anio_sgsst_listado ;;
  }
  dimension: anio_sgsst_ultimo {
    type: string
    sql: ${TABLE}.anio_sgsst_ultimo ;;
  }
  dimension: autoevaluacion_sgsst {
    type: string
    sql: ${TABLE}.autoevaluacion_sgsst ;;
  }
  dimension: cod_precalificacion_empresa {
    type: number
    sql: ${TABLE}.cod_precalificacion_empresa ;;
  }
  dimension: codigo_arl {
    type: number
    sql: ${TABLE}.codigo_arl ;;
  }
  dimension: codigo_ruc {
    type: number
    sql: ${TABLE}.codigo_ruc ;;
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
  dimension: fatalidades {
    type: number
    sql: ${TABLE}.fatalidades ;;
  }
  dimension_group: fecha_accidentes {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_accidentes ;;
  }
  dimension_group: fecha_afiliacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_afiliacion ;;
  }
  dimension_group: fecha_certificacion_arl {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_certificacion_arl ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension: incapacidad {
    type: number
    sql: ${TABLE}.incapacidad ;;
  }
  dimension: incidentes {
    type: number
    sql: ${TABLE}.incidentes ;;
  }
  dimension: infraccciones_ambientales {
    type: string
    sql: ${TABLE}.infraccciones_ambientales ;;
  }
  dimension: puntaje_arl {
    type: number
    sql: ${TABLE}.puntaje_arl ;;
  }
  dimension: puntaje_ruc {
    type: number
    sql: ${TABLE}.puntaje_ruc ;;
  }
  dimension: registro_actualizacion {
    type: number
    sql: ${TABLE}.registro_actualizacion ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension: sgsst_v3_listado {
    type: string
    sql: ${TABLE}.sgsst_v3_listado ;;
  }
  dimension: sgsst_v3_ultimo {
    type: string
    sql: ${TABLE}.sgsst_v3_ultimo ;;
  }
  dimension: trabajadores {
    type: number
    sql: ${TABLE}.trabajadores ;;
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
