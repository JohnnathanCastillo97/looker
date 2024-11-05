view: mst_polizas_actividades_riesgo {
  sql_table_name: bd_ic_cliente.mst_polizas_actividades_riesgo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividad_objeto {
    type: string
    sql: ${TABLE}.actividad_objeto ;;
  }
  dimension: calidad_bien {
    type: string
    sql: ${TABLE}.calidad_bien ;;
  }
  dimension: calidad_funcion_maquinas {
    type: string
    sql: ${TABLE}.calidad_funcion_maquinas ;;
  }
  dimension: calidad_servicio {
    type: string
    sql: ${TABLE}.calidad_servicio ;;
  }
  dimension: cumplimiento {
    type: string
    sql: ${TABLE}.cumplimiento ;;
  }
  dimension: estabilidad_obra {
    type: string
    sql: ${TABLE}.estabilidad_obra ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: num_actividad {
    type: string
    sql: ${TABLE}.num_actividad ;;
  }
  dimension: otros_seguros {
    type: string
    sql: ${TABLE}.otros_seguros ;;
  }
  dimension: pago_salarios_indem {
    type: string
    sql: ${TABLE}.pago_salarios_indem ;;
  }
  dimension: porcentaje_1 {
    type: number
    sql: ${TABLE}.porcentaje_1 ;;
  }
  dimension: porcentaje_2 {
    type: number
    sql: ${TABLE}.porcentaje_2 ;;
  }
  dimension: porcentaje_3 {
    type: number
    sql: ${TABLE}.porcentaje_3 ;;
  }
  dimension: porcentaje_4 {
    type: number
    sql: ${TABLE}.porcentaje_4 ;;
  }
  dimension: porcentaje_5 {
    type: number
    sql: ${TABLE}.porcentaje_5 ;;
  }
  dimension: porcentaje_6 {
    type: number
    sql: ${TABLE}.porcentaje_6 ;;
  }
  dimension: responsabilidad_civil_extracontractual {
    type: string
    sql: ${TABLE}.responsabilidad_civil_extracontractual ;;
  }
  dimension: responsabilidad_civil_profesional {
    type: string
    sql: ${TABLE}.responsabilidad_civil_profesional ;;
  }
  dimension: seguro_riesgos_ciberneticos {
    type: string
    sql: ${TABLE}.seguro_riesgos_ciberneticos ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: valor_asegurado_smmlv_1 {
    type: number
    sql: ${TABLE}.valor_asegurado_SMMLV_1 ;;
  }
  dimension: valor_asegurado_smmlv_2 {
    type: number
    sql: ${TABLE}.valor_asegurado_SMMLV_2 ;;
  }
  dimension: valor_asegurado_smmlv_3 {
    type: number
    sql: ${TABLE}.valor_asegurado_SMMLV_3 ;;
  }
  dimension: valor_asegurado_smmlv_4 {
    type: string
    sql: ${TABLE}.valor_asegurado_SMMLV_4 ;;
  }
  dimension: vigencia_1 {
    type: string
    sql: ${TABLE}.vigencia_1 ;;
  }
  dimension: vigencia_10 {
    type: string
    sql: ${TABLE}.vigencia_10 ;;
  }
  dimension: vigencia_2 {
    type: string
    sql: ${TABLE}.vigencia_2 ;;
  }
  dimension: vigencia_3 {
    type: string
    sql: ${TABLE}.vigencia_3 ;;
  }
  dimension: vigencia_4 {
    type: string
    sql: ${TABLE}.vigencia_4 ;;
  }
  dimension: vigencia_5 {
    type: string
    sql: ${TABLE}.vigencia_5 ;;
  }
  dimension: vigencia_6 {
    type: string
    sql: ${TABLE}.vigencia_6 ;;
  }
  dimension: vigencia_7 {
    type: string
    sql: ${TABLE}.vigencia_7 ;;
  }
  dimension: vigencia_8 {
    type: string
    sql: ${TABLE}.vigencia_8 ;;
  }
  dimension: vigencia_9 {
    type: string
    sql: ${TABLE}.vigencia_9 ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
