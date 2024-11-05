view: paa_linea {
  sql_table_name: bd_ic_cliente.paa_linea ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clase_adquisicion {
    type: string
    sql: ${TABLE}.clase_adquisicion ;;
  }
  dimension: distribucion_presupuesto_anual {
    type: string
    sql: ${TABLE}.distribucion_presupuesto_anual ;;
  }
  dimension: distribucion_vigencia_contrato {
    type: string
    sql: ${TABLE}.distribucion_vigencia_contrato ;;
  }
  dimension: duracion {
    type: number
    sql: ${TABLE}.duracion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_anterior {
    type: string
    sql: ${TABLE}.estado_anterior ;;
  }
  dimension: estado_vigencia_futura {
    type: string
    sql: ${TABLE}.estado_vigencia_futura ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_estimada_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_estimada_inicio ;;
  }
  dimension: fecha_vencimiento {
    type: string
    sql: ${TABLE}.fecha_vencimiento ;;
  }
  dimension: id_actividad {
    type: number
    sql: ${TABLE}.id_actividad ;;
  }
  dimension: id_centro_costo {
    type: number
    sql: ${TABLE}.id_centro_costo ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_comprador {
    type: number
    sql: ${TABLE}.id_comprador ;;
  }
  dimension: id_ejercicio_paa {
    type: number
    sql: ${TABLE}.id_ejercicio_paa ;;
  }
  dimension: id_elemento_pep {
    type: number
    sql: ${TABLE}.id_elemento_pep ;;
  }
  dimension: id_nueva_linea {
    type: number
    sql: ${TABLE}.id_nueva_linea ;;
  }
  dimension: id_supervisor {
    type: number
    sql: ${TABLE}.id_supervisor ;;
  }
  dimension: is_uso {
    type: string
    sql: ${TABLE}.isUso ;;
  }
  dimension: modalidad_seleccion {
    type: string
    sql: ${TABLE}.modalidad_seleccion ;;
  }
  dimension: moneda_futura {
    type: string
    sql: ${TABLE}.moneda_futura ;;
  }
  dimension: moneda_plan {
    type: string
    sql: ${TABLE}.moneda_plan ;;
  }
  dimension: numero_contrato {
    type: string
    sql: ${TABLE}.numero_contrato ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: pareto {
    type: string
    sql: ${TABLE}.pareto ;;
  }
  dimension: requiere_vigencia_futura {
    type: string
    sql: ${TABLE}.requiere_vigencia_futura ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: tasa_cambio {
    type: number
    sql: ${TABLE}.tasa_cambio ;;
  }
  dimension: tipo_linea {
    type: string
    sql: ${TABLE}.tipo_linea ;;
  }
  dimension: tracto_sucesivo {
    type: string
    sql: ${TABLE}.tracto_sucesivo ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_aprobacion {
    type: number
    sql: ${TABLE}.usuario_aprobacion ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  dimension: usuario_solicitante {
    type: number
    sql: ${TABLE}.usuario_solicitante ;;
  }
  dimension: valor_futura {
    type: string
    sql: ${TABLE}.valor_futura ;;
  }
  dimension: valor_plan {
    type: string
    sql: ${TABLE}.valor_plan ;;
  }
  dimension: valor_total {
    type: string
    sql: ${TABLE}.valor_total ;;
  }
  dimension: valor_total_distribucion {
    type: string
    sql: ${TABLE}.valor_total_distribucion ;;
  }
  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
