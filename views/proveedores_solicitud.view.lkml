view: proveedores_solicitud {
  sql_table_name: bd_ic_cliente.proveedores_solicitud ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto_eliminado {
    type: string
    sql: ${TABLE}.adjunto_eliminado ;;
  }
  dimension: ans_dia {
    type: number
    sql: ${TABLE}.ansDia ;;
  }
  dimension: ans_solicitud {
    type: number
    sql: ${TABLE}.ansSolicitud ;;
  }
  dimension: contacto_adicional {
    type: string
    sql: ${TABLE}.contacto_adicional ;;
  }
  dimension: correo_adicional {
    type: string
    sql: ${TABLE}.correo_adicional ;;
  }
  dimension: cual_caso_especial {
    type: string
    sql: ${TABLE}.cualCasoEspecial ;;
  }
  dimension: dias_cargue_informacion_proveedor {
    type: number
    sql: ${TABLE}.diasCargueInformacionProveedor ;;
  }
  dimension: dias_contacto_proveedor {
    type: number
    sql: ${TABLE}.diasContactoProveedor ;;
  }
  dimension: dias_restantes_ans {
    type: number
    sql: ${TABLE}.diasRestantesANS ;;
  }
  dimension: dias_totales {
    type: number
    sql: ${TABLE}.diasTotales ;;
  }
  dimension: dias_validacion {
    type: number
    sql: ${TABLE}.diasValidacion ;;
  }
  dimension: es_local {
    type: string
    sql: ${TABLE}.esLocal ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_gestion_proveedor {
    type: string
    sql: ${TABLE}.estado_gestion_proveedor ;;
  }
  dimension: estado_requerido {
    type: string
    sql: ${TABLE}.estado_requerido ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_envio_linea_etica {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaEnvioLineaEtica ;;
  }
  dimension_group: fecha_envio_validacion_proveedor {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaEnvioValidacionProveedor ;;
  }
  dimension_group: fecha_gestion_resultado {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_gestion_resultado ;;
  }
  dimension_group: fecha_primer_contacto_proveedor {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaPrimerContactoProveedor ;;
  }
  dimension_group: fecha_respuesta_linea_etica {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaRespuestaLineaEtica ;;
  }
  dimension_group: fecha_validacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_validacion ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: nuevo_estado {
    type: string
    sql: ${TABLE}.nuevoEstado ;;
  }
  dimension: obs {
    type: string
    sql: ${TABLE}.obs ;;
  }
  dimension: obsevacion_eliminado {
    type: string
    sql: ${TABLE}.obsevacion_eliminado ;;
  }
  dimension: otro_caso_especial {
    type: string
    sql: ${TABLE}.otroCasoEspecial ;;
  }
  dimension: proveedor_caso_especial {
    type: string
    sql: ${TABLE}.proveedorCasoEspecial ;;
  }
  dimension: requiere_cambio_estado {
    type: string
    sql: ${TABLE}.requiereCambioEstado ;;
  }
  dimension: soporte {
    type: string
    sql: ${TABLE}.soporte ;;
  }
  dimension: telefono_adicional {
    type: string
    sql: ${TABLE}.telefono_adicional ;;
  }
  dimension: tipo_requerimiento {
    type: string
    sql: ${TABLE}.tipo_requerimiento ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, observaciones_proveedores_solicitud.count]
  }
}
