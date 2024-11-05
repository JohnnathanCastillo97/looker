view: solicitud_listas_restrictivas {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: archivo_excel_aws {
    type: string
    sql: ${TABLE}.archivoExcelAWS ;;
  }
  dimension: archivo_excel_final_aws {
    type: string
    sql: ${TABLE}.archivoExcelFinalAWS ;;
  }
  dimension: archivo_excel_temporal {
    type: string
    sql: ${TABLE}.archivoExcelTemporal ;;
  }
  dimension: data_generada_pdf {
    type: string
    sql: ${TABLE}.dataGeneradaPdf ;;
  }
  dimension_group: dia_cumple {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.diaCumple ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_consulta {
    type: string
    sql: ${TABLE}.estadoConsulta ;;
  }
  dimension: estado_registro {
    type: string
    sql: ${TABLE}.estadoRegistro ;;
  }
  dimension: estado_temporal {
    type: string
    sql: ${TABLE}.estadoTemporal ;;
  }
  dimension: excel_creado {
    type: string
    sql: ${TABLE}.excelCreado ;;
  }
  dimension_group: fecha_envio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaEnvio ;;
  }
  dimension_group: fecha_expedicion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaExpedicion ;;
  }
  dimension_group: fecha_finalizada {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaFinalizada ;;
  }
  dimension_group: fecha_listas_control {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaListasControl ;;
  }
  dimension_group: fecha_procesada {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaProcesada ;;
  }
  dimension_group: fecha_solicitud {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaSolicitud ;;
  }
  dimension: force_creation {
    type: yesno
    sql: ${TABLE}.forceCreation ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.idCliente ;;
  }
  dimension: id_lista_restrictiva_proveedores {
    type: number
    sql: ${TABLE}.idListaRestrictivaProveedores ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.idProveedor ;;
  }
  dimension: id_usuario_encargado_suplos {
    type: number
    sql: ${TABLE}.idUsuarioEncargadoSuplos ;;
  }
  dimension: id_usuario_envio {
    type: number
    sql: ${TABLE}.idUsuarioEnvio ;;
  }
  dimension: id_usuario_finalizada {
    type: number
    sql: ${TABLE}.idUsuarioFinalizada ;;
  }
  dimension: id_usuario_listas_control {
    type: number
    sql: ${TABLE}.idUsuarioListasControl ;;
  }
  dimension: id_usuario_solicitud {
    type: number
    sql: ${TABLE}.idUsuarioSolicitud ;;
  }
  dimension: is_cron {
    type: string
    sql: ${TABLE}.isCron ;;
  }
  dimension: modo_consumo {
    type: string
    sql: ${TABLE}.modoConsumo ;;
  }
  dimension: nombre_razon_social {
    type: string
    sql: ${TABLE}.nombreRazonSocial ;;
  }
  dimension: numero_identificacion {
    type: string
    sql: ${TABLE}.numeroIdentificacion ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }
  dimension: partes_relacionadas_analizadas {
    type: number
    sql: ${TABLE}.partesRelacionadasAnalizadas ;;
  }
  dimension: partes_relacionadas_totales {
    type: number
    sql: ${TABLE}.partesRelacionadasTotales ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: requiere_data_pdf {
    type: string
    sql: ${TABLE}.requiereDataPdf ;;
  }
  dimension: solicitud_consecutivo {
    type: number
    sql: ${TABLE}.solicitudConsecutivo ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipoDocumento ;;
  }
  dimension: tipo_personalizado {
    type: string
    sql: ${TABLE}.tipoPersonalizado ;;
  }
  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipoSolicitud ;;
  }
  dimension: version_excel {
    type: string
    sql: ${TABLE}.versionExcel ;;
  }
  dimension: vigencia {
    type: string
    sql: ${TABLE}.vigencia ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
