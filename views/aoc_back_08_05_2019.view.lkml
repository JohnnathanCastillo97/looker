view: aoc_back_08_05_2019 {
  sql_table_name: bd_ic_cliente.aoc_back_08_05_2019 ;;

  dimension: alcance {
    type: string
    sql: ${TABLE}.alcance ;;
  }
  dimension: alternativas {
    type: string
    sql: ${TABLE}.alternativas ;;
  }
  dimension: antecedentes {
    type: string
    sql: ${TABLE}.antecedentes ;;
  }
  dimension: contratacion {
    type: string
    sql: ${TABLE}.contratacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_acto {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_acto ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension_group: fecha_comite {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_comite ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: fundamentos_norma {
    type: string
    sql: ${TABLE}.fundamentos_norma ;;
  }
  dimension: id_abogado {
    type: number
    sql: ${TABLE}.id_abogado ;;
  }
  dimension: id_aoc {
    type: number
    sql: ${TABLE}.id_aoc ;;
  }
  dimension: id_centro_gestor {
    type: number
    sql: ${TABLE}.id_centro_gestor ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_estudio_mercado {
    type: number
    sql: ${TABLE}.id_estudio_mercado ;;
  }
  dimension: id_paa_linea {
    type: number
    sql: ${TABLE}.id_paa_linea ;;
  }
  dimension: id_solicitante {
    type: number
    sql: ${TABLE}.id_solicitante ;;
  }
  dimension: id_solicitud_compra {
    type: number
    sql: ${TABLE}.id_solicitud_compra ;;
  }
  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }
  dimension: justificacion {
    type: string
    sql: ${TABLE}.justificacion ;;
  }
  dimension: modalidad {
    type: string
    sql: ${TABLE}.modalidad ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: moneda_acto {
    type: string
    sql: ${TABLE}.moneda_acto ;;
  }
  dimension: numero_acto {
    type: string
    sql: ${TABLE}.numero_acto ;;
  }
  dimension: numero_comite {
    type: string
    sql: ${TABLE}.numero_comite ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: proyecto {
    type: string
    sql: ${TABLE}.proyecto ;;
  }
  dimension: recurso_porcentaje {
    type: number
    sql: ${TABLE}.recurso_porcentaje ;;
  }
  dimension: requiere_presupuesto {
    type: string
    sql: ${TABLE}.requiere_presupuesto ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: tipo_supervision {
    type: string
    sql: ${TABLE}.tipo_supervision ;;
  }
  dimension: urgencia_manifiesta {
    type: string
    sql: ${TABLE}.urgencia_manifiesta ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_aprobacion {
    type: number
    sql: ${TABLE}.usuario_aprobacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_solicitante {
    type: number
    sql: ${TABLE}.usuario_solicitante ;;
  }
  dimension: valor_acto {
    type: number
    sql: ${TABLE}.valor_acto ;;
  }
  dimension: valor_con_iva {
    type: string
    sql: ${TABLE}.valor_con_iva ;;
  }
  dimension: valor_sin_iva {
    type: string
    sql: ${TABLE}.valor_sin_iva ;;
  }
  measure: count {
    type: count
  }
}
