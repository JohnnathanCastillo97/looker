view: tg_paa_linea_otrocamp {
  sql_table_name: bd_ic_cliente.tg_paa_linea_otrocamp ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }
  dimension: caracteristicas {
    type: string
    sql: ${TABLE}.caracteristicas ;;
  }
  dimension: ciudad {
    type: number
    sql: ${TABLE}.ciudad ;;
  }
  dimension: comite_adjudicacion {
    type: string
    sql: ${TABLE}.comite_adjudicacion ;;
  }
  dimension: comite_apertura {
    type: string
    sql: ${TABLE}.comite_apertura ;;
  }
  dimension: compania {
    type: number
    sql: ${TABLE}.compania ;;
  }
  dimension: contratista {
    type: string
    sql: ${TABLE}.contratista ;;
  }
  dimension: contrato_actual {
    type: string
    sql: ${TABLE}.contrato_actual ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: datos {
    type: string
    sql: ${TABLE}.datos ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: estado_cliente {
    type: string
    sql: ${TABLE}.estado_cliente ;;
  }
  dimension_group: fecha_abast {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_abast ;;
  }
  dimension_group: fecha_adjudicacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_adjudicacion ;;
  }
  dimension_group: fecha_apertura {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_apertura ;;
  }
  dimension_group: fecha_fin_contrato {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin_contrato ;;
  }
  dimension_group: fecha_inicio_contrato {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio_contrato ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension_group: fecha_plan {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_plan ;;
  }
  dimension_group: fecha_requerida_revisado {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_requerida_revisado ;;
  }
  dimension_group: fecha_vencimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_vencimiento ;;
  }
  dimension: gerencia {
    type: number
    sql: ${TABLE}.gerencia ;;
  }
  dimension: id_objetivo_pec {
    type: number
    sql: ${TABLE}.id_objetivo_pec ;;
  }
  dimension: id_paa_linea {
    type: number
    sql: ${TABLE}.id_paa_linea ;;
  }
  dimension: justificacion {
    type: string
    sql: ${TABLE}.justificacion ;;
  }
  dimension: lider_categoria {
    type: number
    sql: ${TABLE}.lider_categoria ;;
  }
  dimension: matriz_abastecimiento {
    type: string
    sql: ${TABLE}.matriz_abastecimiento ;;
  }
  dimension: modulo_actual {
    type: string
    sql: ${TABLE}.modulo_actual ;;
  }
  dimension: orden_interna {
    type: number
    sql: ${TABLE}.orden_interna ;;
  }
  dimension: pcc_id {
    type: number
    sql: ${TABLE}.pcc_id ;;
  }
  dimension: planeador {
    type: string
    sql: ${TABLE}.planeador ;;
  }
  dimension: profesional_abas {
    type: string
    sql: ${TABLE}.profesional_abas ;;
  }
  dimension: salario_minimo {
    type: number
    sql: ${TABLE}.salario_minimo ;;
  }
  dimension: sociedad {
    type: number
    sql: ${TABLE}.sociedad ;;
  }
  dimension: soporte_legal {
    type: number
    sql: ${TABLE}.soporte_legal ;;
  }
  dimension: superintendencia {
    type: number
    sql: ${TABLE}.superintendencia ;;
  }
  dimension: tiempo_entrega {
    type: number
    sql: ${TABLE}.tiempo_entrega ;;
  }
  dimension: tipo_contratacion {
    type: string
    sql: ${TABLE}.tipo_contratacion ;;
  }
  dimension: tipo_gasto {
    type: string
    sql: ${TABLE}.tipo_gasto ;;
  }
  dimension: tipo_modificacion {
    type: string
    sql: ${TABLE}.tipo_modificacion ;;
  }
  dimension: tipo_necesidad {
    type: number
    sql: ${TABLE}.tipo_necesidad ;;
  }
  dimension: tracto_sucesivo {
    type: string
    sql: ${TABLE}.tracto_sucesivo ;;
  }
  dimension: unidad_negocio {
    type: string
    sql: ${TABLE}.unidad_negocio ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor_mensualizado {
    type: string
    sql: ${TABLE}.valor_mensualizado ;;
  }
  dimension: vice_direccion {
    type: number
    sql: ${TABLE}.vice_direccion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
