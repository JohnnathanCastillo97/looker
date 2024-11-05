view: solicitud_datos_adicionales_odl {
  sql_table_name: bd_ic_cliente.solicitud_datos_adicionales_odl ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: alianza {
    type: string
    sql: ${TABLE}.alianza ;;
  }
  dimension: anticipo {
    type: string
    sql: ${TABLE}.anticipo ;;
  }
  dimension: anticipo_porcentaje {
    type: number
    sql: ${TABLE}.anticipo_porcentaje ;;
  }
  dimension: aprobacion {
    type: string
    sql: ${TABLE}.aprobacion ;;
  }
  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }
  dimension: bic_aiu {
    type: string
    sql: ${TABLE}.bic_aiu ;;
  }
  dimension: bic_sin_iva {
    type: number
    sql: ${TABLE}.bic_sin_iva ;;
  }
  dimension: bic_valor_administracion {
    type: string
    sql: ${TABLE}.bic_valor_administracion ;;
  }
  dimension: bic_valor_gastos {
    type: string
    sql: ${TABLE}.bic_valor_gastos ;;
  }
  dimension: bic_valor_solicitud {
    type: string
    sql: ${TABLE}.bic_valor_solicitud ;;
  }
  dimension: cantidad_estabilidad {
    type: string
    sql: ${TABLE}.cantidad_estabilidad ;;
  }
  dimension: cantidad_estabilidad_porcentaje {
    type: number
    sql: ${TABLE}.cantidad_estabilidad_porcentaje ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: causal_contratacion {
    type: string
    sql: ${TABLE}.causal_contratacion ;;
  }
  dimension: ci {
    type: string
    sql: ${TABLE}.CI ;;
  }
  dimension: compania {
    type: string
    sql: ${TABLE}.compania ;;
  }
  dimension: correcto_funcionamiento {
    type: string
    sql: ${TABLE}.correcto_funcionamiento ;;
  }
  dimension: correcto_funcionamiento_porcentaje {
    type: number
    sql: ${TABLE}.correcto_funcionamiento_porcentaje ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: criterio {
    type: string
    sql: ${TABLE}.criterio ;;
  }
  dimension: cumplimiento {
    type: string
    sql: ${TABLE}.cumplimiento ;;
  }
  dimension: cumplimiento_porcentaje {
    type: number
    sql: ${TABLE}.cumplimiento_porcentaje ;;
  }
  dimension: da {
    type: string
    sql: ${TABLE}.DA ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: encargo_fiduciario {
    type: string
    sql: ${TABLE}.encargo_fiduciario ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_finalizada {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_finalizada ;;
  }
  dimension: gastos_reembolsables {
    type: string
    sql: ${TABLE}.gastos_reembolsables ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: indicador {
    type: string
    sql: ${TABLE}.indicador ;;
  }
  dimension: ipc {
    type: string
    sql: ${TABLE}.IPC ;;
  }
  dimension: justificacion {
    type: string
    sql: ${TABLE}.justificacion ;;
  }
  dimension: moneda_planeada {
    type: string
    sql: ${TABLE}.moneda_planeada ;;
  }
  dimension: moneda_solicitud_sap {
    type: string
    sql: ${TABLE}.moneda_solicitud_SAP ;;
  }
  dimension: moneda_solicitudes_pedido_sap {
    type: string
    sql: ${TABLE}.moneda_solicitudes_pedido_SAP ;;
  }
  dimension: necesidad {
    type: string
    sql: ${TABLE}.necesidad ;;
  }
  dimension: nro_contrato {
    type: string
    sql: ${TABLE}.nro_contrato ;;
  }
  dimension: nro_pedido {
    type: string
    sql: ${TABLE}.nro_pedido ;;
  }
  dimension: nro_posicion {
    type: string
    sql: ${TABLE}.nro_posicion ;;
  }
  dimension: objetivo {
    type: string
    sql: ${TABLE}.objetivo ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: odl_valor_administracion {
    type: string
    sql: ${TABLE}.odl_valor_administracion ;;
  }
  dimension: otra {
    type: string
    sql: ${TABLE}.otra ;;
  }
  dimension: otra_porcentaje {
    type: number
    sql: ${TABLE}.otra_porcentaje ;;
  }
  dimension: p_requerimiento_contribucion {
    type: string
    sql: ${TABLE}.p_requerimiento_contribucion ;;
  }
  dimension: p_requerimiento_estampilla {
    type: string
    sql: ${TABLE}.p_requerimiento_estampilla ;;
  }
  dimension: p_requerimiento_objeto {
    type: string
    sql: ${TABLE}.p_requerimiento_objeto ;;
  }
  dimension: profesional_abas {
    type: string
    sql: ${TABLE}.profesional_abas ;;
  }
  dimension: puntuable {
    type: string
    sql: ${TABLE}.puntuable ;;
  }
  dimension: rce {
    type: string
    sql: ${TABLE}.rce ;;
  }
  dimension: rce_porcentaje {
    type: number
    sql: ${TABLE}.rce_porcentaje ;;
  }
  dimension: salarios {
    type: string
    sql: ${TABLE}.salarios ;;
  }
  dimension: salarios_porcentaje {
    type: number
    sql: ${TABLE}.salarios_porcentaje ;;
  }
  dimension: seriedad_oferta {
    type: string
    sql: ${TABLE}.seriedad_oferta ;;
  }
  dimension: seriedad_oferta_porcentaje {
    type: number
    sql: ${TABLE}.seriedad_oferta_porcentaje ;;
  }
  dimension: smmlv {
    type: string
    sql: ${TABLE}.smmlv ;;
  }
  dimension: sociedad {
    type: string
    sql: ${TABLE}.sociedad ;;
  }
  dimension: solped {
    type: string
    sql: ${TABLE}.solped ;;
  }
  dimension: solped_liberada {
    type: string
    sql: ${TABLE}.solped_liberada ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_contratacion {
    type: string
    sql: ${TABLE}.tipo_contratacion ;;
  }
  dimension: tipo_cuantia {
    type: string
    sql: ${TABLE}.tipo_cuantia ;;
  }
  dimension: tipo_evaluacion {
    type: string
    sql: ${TABLE}.tipo_evaluacion ;;
  }
  dimension: tipo_necesidad {
    type: string
    sql: ${TABLE}.tipo_necesidad ;;
  }
  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor_administracion {
    type: string
    sql: ${TABLE}.valor_administracion ;;
  }
  dimension: valor_aiu {
    type: string
    sql: ${TABLE}.valor_aiu ;;
  }
  dimension: valor_gastos_reembolsables {
    type: string
    sql: ${TABLE}.valor_gastos_reembolsables ;;
  }
  dimension: valor_orden_sin_iva {
    type: string
    sql: ${TABLE}.valor_orden_sin_iva ;;
  }
  dimension: valor_planeado_sin_iva {
    type: number
    sql: ${TABLE}.valor_planeado_sin_iva ;;
  }
  dimension: valor_posicion {
    type: string
    sql: ${TABLE}.valor_posicion ;;
  }
  dimension: valor_posicion_act {
    type: string
    sql: ${TABLE}.valor_posicion_act ;;
  }
  dimension: valor_solicitud_odl_sin_iva {
    type: string
    sql: ${TABLE}.valor_solicitud_odl_sin_iva ;;
  }
  dimension: valor_solicitud_sap {
    type: string
    sql: ${TABLE}.valor_solicitud_SAP ;;
  }
  dimension: valor_solicitud_sin_iva {
    type: string
    sql: ${TABLE}.valor_solicitud_sin_iva ;;
  }
  dimension: valor_total_solicitud_sin_iva {
    type: number
    sql: ${TABLE}.valor_total_solicitud_sin_iva ;;
  }
  dimension: valor_total_solicitudes_sap {
    type: string
    sql: ${TABLE}.valor_total_solicitudes_SAP ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
