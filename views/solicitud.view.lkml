view: solicitud {
  sql_table_name: bd_ic_cliente.solicitud ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: acuerdo_marco {
    type: string
    sql: ${TABLE}.acuerdo_marco ;;
  }
  dimension: clase_documento {
    type: string
    sql: ${TABLE}.clase_documento ;;
  }
  dimension: comite {
    type: string
    sql: ${TABLE}.comite ;;
  }
  dimension: convenio {
    type: string
    sql: ${TABLE}.convenio ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: datos_paa {
    type: string
    sql: ${TABLE}.datos_paa ;;
  }
  dimension: declaracion {
    type: string
    sql: ${TABLE}.declaracion ;;
  }
  dimension: delegado {
    type: number
    sql: ${TABLE}.delegado ;;
  }
  dimension: director_usuario {
    type: number
    sql: ${TABLE}.directorUsuario ;;
  }
  dimension: disposicion {
    type: string
    sql: ${TABLE}.disposicion ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension: elemento_gasto {
    type: string
    sql: ${TABLE}.elemento_gasto ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_ans {
    type: string
    sql: ${TABLE}.estadoANS ;;
  }
  dimension: estado_anterior {
    type: string
    sql: ${TABLE}.estado_anterior ;;
  }
  dimension: estrategia {
    type: string
    sql: ${TABLE}.estrategia ;;
  }
  dimension: fabricacion {
    type: string
    sql: ${TABLE}.fabricacion ;;
  }
  dimension_group: fecha_comite {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_comite ;;
  }
  dimension_group: fecha_creacion_solped {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion_solped ;;
  }
  dimension_group: fecha_en_firme {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_en_firme ;;
  }
  dimension_group: fecha_fin_aclaracion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_fin_aclaracion ;;
  }
  dimension_group: fecha_fin_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_fin_creacion ;;
  }
  dimension_group: fecha_finalizada {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_finalizada ;;
  }
  dimension: forma_pago {
    type: string
    sql: ${TABLE}.forma_pago ;;
  }
  dimension: grupo_compra {
    type: string
    sql: ${TABLE}.grupo_compra ;;
  }
  dimension: hitos {
    type: string
    sql: ${TABLE}.hitos ;;
  }
  dimension: id_abogado {
    type: number
    sql: ${TABLE}.id_abogado ;;
  }
  dimension: id_categoria {
    type: number
    sql: ${TABLE}.id_categoria ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_comprador {
    type: number
    sql: ${TABLE}.id_comprador ;;
  }
  dimension: id_paa_linea {
    type: number
    sql: ${TABLE}.id_paa_linea ;;
  }
  dimension: id_supervisor_suplente {
    type: number
    sql: ${TABLE}.id_supervisor_suplente ;;
  }
  dimension: is_gestion {
    type: string
    sql: ${TABLE}.isGestion ;;
  }
  dimension: is_implementaciones {
    type: string
    sql: ${TABLE}.isImplementaciones ;;
  }
  dimension: is_merchandising {
    type: string
    sql: ${TABLE}.isMerchandising ;;
  }
  dimension: is_nueva_estrategia {
    type: string
    sql: ${TABLE}.isNuevaEstrategia ;;
  }
  dimension: is_poliza {
    type: string
    sql: ${TABLE}.isPoliza ;;
  }
  dimension: is_poliza_revision {
    type: string
    sql: ${TABLE}.isPolizaRevision ;;
  }
  dimension: is_reasignar_solicitud {
    type: string
    sql: ${TABLE}.isReasignarSolicitud ;;
  }
  dimension: is_tipo_solicitud {
    type: string
    sql: ${TABLE}.isTipoSolicitud ;;
  }
  dimension: kpi {
    type: string
    sql: ${TABLE}.kpi ;;
  }
  dimension: lugar_entrega {
    type: string
    sql: ${TABLE}.lugar_entrega ;;
  }
  dimension: minuta {
    type: string
    sql: ${TABLE}.minuta ;;
  }
  dimension: minuta_soporte {
    type: string
    sql: ${TABLE}.minuta_soporte ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: monedarr {
    type: string
    sql: ${TABLE}.monedarr ;;
  }
  dimension: non_stock {
    type: string
    sql: ${TABLE}.non_stock ;;
  }
  dimension: numero_convenio {
    type: string
    sql: ${TABLE}.numero_convenio ;;
  }
  dimension: numero_rr {
    type: string
    sql: ${TABLE}.numero_rr ;;
  }
  dimension: numero_solped {
    type: string
    sql: ${TABLE}.numero_solped ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: polizas {
    type: string
    sql: ${TABLE}.polizas ;;
  }
  dimension: presupuesto_antes_iva {
    type: number
    sql: ${TABLE}.presupuesto_antes_iva ;;
  }
  dimension: reajuste {
    type: string
    sql: ${TABLE}.reajuste ;;
  }
  dimension: reasignacion_observacion {
    type: string
    sql: ${TABLE}.reasignacion_observacion ;;
  }
  dimension: reasignar_solicitud {
    type: string
    sql: ${TABLE}.reasignar_solicitud ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: seq_id_linea {
    type: string
    sql: ${TABLE}.seq_id_linea ;;
  }
  dimension: sinergia {
    type: string
    sql: ${TABLE}.sinergia ;;
  }
  dimension: solicitud_version {
    type: string
    sql: ${TABLE}.solicitud_version ;;
  }
  dimension: soporte_comite {
    type: string
    sql: ${TABLE}.soporte_comite ;;
  }
  dimension: subgerente {
    type: number
    sql: ${TABLE}.subgerente ;;
  }
  dimension: tiempo_ejecucion {
    type: number
    sql: ${TABLE}.tiempo_ejecucion ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_cabecera {
    type: string
    sql: ${TABLE}.tipo_cabecera ;;
  }
  dimension: tipo_preparacion {
    type: string
    sql: ${TABLE}.tipo_preparacion ;;
  }
  dimension: tipo_presupuesto {
    type: string
    sql: ${TABLE}.tipo_presupuesto ;;
  }
  dimension: tipo_revision {
    type: string
    sql: ${TABLE}.tipo_revision ;;
  }
  dimension: titular {
    type: number
    sql: ${TABLE}.titular ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  dimension: valor_rr {
    type: string
    sql: ${TABLE}.valor_rr ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	historico_acciones_ocensa_solicitudes.count,
	oferta_datos_adicionales.count,
	solicitud_ecopetrol_datos_adicionales.count,
	solicitud_ecopetrol_gestion.count,
	solicitud_ecopetrol_soporte.count,
	solicitud_ocensa_info_adicional.count,
	solicitud_ocensa_soporte.count,
	solicitud_posicion_cargue_sap.count
	]
  }

}
