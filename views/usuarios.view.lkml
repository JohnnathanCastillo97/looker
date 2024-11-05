view: usuarios {
  sql_table_name: bd_ic_cliente.usuarios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aprobador_catalogos {
    type: string
    sql: ${TABLE}.aprobador_catalogos ;;
  }
  dimension: cargo {
    type: string
    sql: ${TABLE}.cargo ;;
  }
  dimension: ciudad_id {
    type: number
    sql: ${TABLE}.ciudad_id ;;
  }
  dimension: documento {
    type: number
    sql: ${TABLE}.documento ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: empresa_id {
    type: number
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: empresa_standard_id {
    type: number
    sql: ${TABLE}.empresa_standard_id ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: evaluador_hse {
    type: string
    sql: ${TABLE}.evaluador_hse ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_cambio_pass {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_cambio_pass ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension_group: fecha_nacimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension_group: fecharegistro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecharegistro ;;
  }
  dimension: foto_perfil {
    type: string
    sql: ${TABLE}.foto_perfil ;;
  }
  dimension: id_old {
    type: string
    sql: ${TABLE}.id_old ;;
  }
  dimension: id_perfil {
    type: number
    sql: ${TABLE}.id_perfil ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: password_nocrip {
    type: string
    sql: ${TABLE}.password_nocrip ;;
  }
  dimension: solicitud_cambio_pass {
    type: string
    sql: ${TABLE}.solicitud_cambio_pass ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }
  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }
  dimension: usuario_modificacion {
    type: string
    sql: ${TABLE}.usuario_modificacion ;;
  }
  dimension: usuario_sap {
    type: string
    sql: ${TABLE}.usuario_sap ;;
  }
  dimension_group: vigencia_usuario {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.vigencia_usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	username,
	continuidad_vinculacion_proveedor.count,
	contratos_anexos.count,
	contratos_anexos_paises.count,
	contratos_clausulas_penales.count,
	contratos_desempeno.count,
	contratos_multas.count,
	contratos_polizas_rev_apro.count,
	contratos_revision_legal_comentarios.count,
	contratos_seguimiento.count,
	contratos_supervision.count,
	ejecucion_reportes.count,
	evaluacion_contrato_aceptacion.count,
	evaluacion_relacion_contrato_vs_ficha.count,
	expediting_anexos.count,
	expediting_corona_anexos.count,
	historial_aprobaciones.count,
	mst_actividade_usuario_lider.count,
	mst_actividade_usuario_negociador.count,
	mst_usuarios_grupos_analistas.count,
	mst_wacc.count,
	oferta_evaluacion_documento.count,
	oferta_usuarios_aprobadores_adicionales.count,
	planes_desarrollo_mejora_proveedores.count,
	requisicion_historial_aprobacion.count,
	solfin_asignaciones_analistas.count,
	solicitud_ecopetrol_gestion_historial.count,
	solicitud_ecopetrol_gestion_observaciones.count,
	tg_oferta_evaluacion_documento.count,
	token_password.count,
	usuarios_firmas_oxxo.count,
	usuarios_log.count,
	usuarios_sap_cliente.count,
	usuarios_subcategorias_oxxo.count,
	usuarios_tiendas_oxxo.count,
	usuarios_token_session.count
	]
  }

}
