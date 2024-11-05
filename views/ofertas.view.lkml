view: ofertas {
  sql_table_name: bd_ic_cliente.ofertas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividad {
    type: string
    sql: ${TABLE}.actividad ;;
  }
  dimension: apertura_capitulos {
    type: number
    sql: ${TABLE}.apertura_capitulos ;;
  }
  dimension: autoproroga {
    type: yesno
    sql: ${TABLE}.autoproroga ;;
  }
  dimension: carta_adjudicacion {
    type: string
    sql: ${TABLE}.carta_adjudicacion ;;
  }
  dimension: cods_delegacion {
    type: string
    sql: ${TABLE}.cods_delegacion ;;
  }
  dimension: consecutivo_savia {
    type: string
    sql: ${TABLE}.consecutivo_savia ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: duenio_oferta {
    type: string
    sql: ${TABLE}.duenio_oferta ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_notificacion {
    type: string
    sql: ${TABLE}.estado_notificacion ;;
  }
  dimension: evaluacion_financiera {
    type: string
    sql: ${TABLE}.evaluacion_financiera ;;
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
  dimension_group: fecha_autorizacion_ajudicacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_autorizacion_ajudicacion ;;
  }
  dimension_group: fecha_cierre {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_cierre ;;
  }
  dimension_group: fecha_corte_eeff {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_corte_eeff ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_fin_delegacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_fin_delegacion ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension_group: fecha_inicio_delegacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_inicio_delegacion ;;
  }
  dimension: fecha_limite_envio {
    type: string
    sql: ${TABLE}.fecha_limite_envio ;;
  }
  dimension_group: fecha_limite_hora {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_limite_hora ;;
  }
  dimension: fecha_limite_msg {
    type: number
    sql: ${TABLE}.fecha_limite_msg ;;
  }
  dimension_group: fecha_limite_msg_fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_limite_msg_fecha ;;
  }
  dimension: fecha_limite_msg_observacion {
    type: string
    sql: ${TABLE}.fecha_limite_msg_observacion ;;
  }
  dimension: fecha_limite_restrictivo {
    type: number
    sql: ${TABLE}.fecha_limite_restrictivo ;;
  }
  dimension_group: fecha_mod_delegacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_mod_delegacion ;;
  }
  dimension: gestion_pedido {
    type: number
    sql: ${TABLE}.gestion_pedido ;;
  }
  dimension_group: hora_cierre {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_cierre ;;
  }
  dimension_group: hora_inicio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_inicio ;;
  }
  dimension: id_aoc {
    type: number
    sql: ${TABLE}.id_aoc ;;
  }
  dimension: id_area {
    type: number
    sql: ${TABLE}.id_area ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_requisicion {
    type: number
    sql: ${TABLE}.id_requisicion ;;
  }
  dimension: maestra1 {
    type: string
    sql: ${TABLE}.maestra1 ;;
  }
  dimension: maestra2 {
    type: string
    sql: ${TABLE}.maestra2 ;;
  }
  dimension: maestra3 {
    type: string
    sql: ${TABLE}.maestra3 ;;
  }
  dimension: modalidad_seleccion {
    type: string
    sql: ${TABLE}.modalidad_seleccion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: observacion_cancelacion {
    type: string
    sql: ${TABLE}.observacion_cancelacion ;;
  }
  dimension: of_compania_alqueria {
    type: string
    sql: ${TABLE}.of_compania_alqueria ;;
  }
  dimension: of_justificacion_alqueria {
    type: string
    sql: ${TABLE}.of_justificacion_alqueria ;;
  }
  dimension: of_periodicidad_compra_alqueria {
    type: string
    sql: ${TABLE}.of_periodicidad_compra_alqueria ;;
  }
  dimension: of_regional_alqueria {
    type: string
    sql: ${TABLE}.of_regional_alqueria ;;
  }
  dimension: of_solicitud_id_alqueria {
    type: number
    value_format_name: id
    sql: ${TABLE}.of_solicitud_id_alqueria ;;
  }
  dimension: of_solicitud_llave_alqueria {
    type: string
    sql: ${TABLE}.of_solicitud_llave_alqueria ;;
  }
  dimension: of_subarea_alqueria {
    type: string
    sql: ${TABLE}.of_subarea_alqueria ;;
  }
  dimension: of_subcategoria_alqueria {
    type: string
    sql: ${TABLE}.of_subcategoria_alqueria ;;
  }
  dimension: of_usuario_solicitante_alqueria {
    type: number
    sql: ${TABLE}.of_usuario_solicitante_alqueria ;;
  }
  dimension: old_id {
    type: number
    sql: ${TABLE}.old_id ;;
  }
  dimension: presupuesto {
    type: number
    sql: ${TABLE}.presupuesto ;;
  }
  dimension: regional {
    type: number
    sql: ${TABLE}.regional ;;
  }
  dimension: require_flujo {
    type: number
    sql: ${TABLE}.require_flujo ;;
  }
  dimension: ronda {
    type: number
    sql: ${TABLE}.ronda ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: solpeds_relacionadas {
    type: string
    sql: ${TABLE}.solpeds_relacionadas ;;
  }
  dimension: soporte_adjudicacion {
    type: string
    sql: ${TABLE}.soporte_adjudicacion ;;
  }
  dimension: soportes_cancelacion {
    type: string
    sql: ${TABLE}.soportes_cancelacion ;;
  }
  dimension: soportes_existencia {
    type: string
    sql: ${TABLE}.soportes_existencia ;;
  }
  dimension: tasa_cambio {
    type: string
    sql: ${TABLE}.tasa_cambio ;;
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
  dimension: usuario_mod_delegacion {
    type: number
    sql: ${TABLE}.usuario_mod_delegacion ;;
  }
  dimension: usuarios_delegacion {
    type: string
    sql: ${TABLE}.usuarios_delegacion ;;
  }
  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  dimension: vigencia {
    type: string
    sql: ${TABLE}.vigencia ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	contratos.count,
	contratos_adendos_linea.count,
	contratos_marcos_oxxo.count,
	historial_aprobaciones.count,
	oferta_cuadro_economico_comparativo.count,
	oferta_datos_adicionales.count,
	oferta_documentos_oferentes.count,
	oferta_evaluacion_documento.count,
	oferta_usuarios_aprobadores_adicionales.count,
	oferta_visitasobra.count,
	tg_contratos.count,
	tg_oferta_documentos_oferentes.count,
	tg_oferta_evaluacion_documento.count,
	tg_oferta_visitasobra.count
	]
  }

}
