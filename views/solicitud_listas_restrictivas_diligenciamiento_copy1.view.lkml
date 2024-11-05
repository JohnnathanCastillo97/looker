view: solicitud_listas_restrictivas_diligenciamiento_copy1 {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_diligenciamiento_copy1 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contraloria_archivo {
    type: string
    sql: ${TABLE}.contraloriaArchivo ;;
  }
  dimension: contraloria_archivo_aws {
    type: string
    sql: ${TABLE}.contraloriaArchivoAWS ;;
  }
  dimension: contraloria_descripcion {
    type: string
    sql: ${TABLE}.contraloriaDescripcion ;;
  }
  dimension: contraloria_hallazgos {
    type: string
    sql: ${TABLE}.contraloriaHallazgos ;;
  }
  dimension: contraloria_visualizar {
    type: string
    sql: ${TABLE}.contraloriaVisualizar ;;
  }
  dimension_group: dia_cumple {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.diaCumple ;;
  }
  dimension: estado_consulta {
    type: string
    sql: ${TABLE}.estadoConsulta ;;
  }
  dimension_group: fecha_expedicion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaExpedicion ;;
  }
  dimension: force_creation {
    type: yesno
    sql: ${TABLE}.forceCreation ;;
  }
  dimension: id_solicitud_listas_restrictivas {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivas ;;
  }
  dimension: identificador {
    type: string
    sql: ${TABLE}.identificador ;;
  }
  dimension: inpec_archivo {
    type: string
    sql: ${TABLE}.inpecArchivo ;;
  }
  dimension: inpec_archivo_aws {
    type: string
    sql: ${TABLE}.inpecArchivoAWS ;;
  }
  dimension: inpec_descripcion {
    type: string
    sql: ${TABLE}.inpecDescripcion ;;
  }
  dimension: inpec_hallazgos {
    type: string
    sql: ${TABLE}.inpecHallazgos ;;
  }
  dimension: inpec_visualizar {
    type: string
    sql: ${TABLE}.inpecVisualizar ;;
  }
  dimension: nombre_razon_social {
    type: string
    sql: ${TABLE}.nombreRazonSocial ;;
  }
  dimension: numero_identificacion {
    type: string
    sql: ${TABLE}.numeroIdentificacion ;;
  }
  dimension: observacion_general {
    type: string
    sql: ${TABLE}.observacionGeneral ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }
  dimension: pn_archivo {
    type: string
    sql: ${TABLE}.pnArchivo ;;
  }
  dimension: pn_archivo_aws {
    type: string
    sql: ${TABLE}.pnArchivoAWS ;;
  }
  dimension: pn_descripcion {
    type: string
    sql: ${TABLE}.pnDescripcion ;;
  }
  dimension: pn_hallazgos {
    type: string
    sql: ${TABLE}.pnHallazgos ;;
  }
  dimension: pn_visualizar {
    type: string
    sql: ${TABLE}.pnVisualizar ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: rnmc_archivo {
    type: string
    sql: ${TABLE}.rnmcArchivo ;;
  }
  dimension: rnmc_archivo_aws {
    type: string
    sql: ${TABLE}.rnmcArchivoAWS ;;
  }
  dimension: rnmc_descripcion {
    type: string
    sql: ${TABLE}.rnmcDescripcion ;;
  }
  dimension: rnmc_hallazgos {
    type: string
    sql: ${TABLE}.rnmcHallazgos ;;
  }
  dimension: rnmc_visualizar {
    type: string
    sql: ${TABLE}.rnmcVisualizar ;;
  }
  dimension: rues_archivo {
    type: string
    sql: ${TABLE}.ruesArchivo ;;
  }
  dimension: rues_archivo_aws {
    type: string
    sql: ${TABLE}.ruesArchivoAWS ;;
  }
  dimension: rues_descripcion {
    type: string
    sql: ${TABLE}.ruesDescripcion ;;
  }
  dimension: rues_hallazgos {
    type: string
    sql: ${TABLE}.ruesHallazgos ;;
  }
  dimension: rues_visualizar {
    type: string
    sql: ${TABLE}.ruesVisualizar ;;
  }
  dimension: sigep_archivo {
    type: string
    sql: ${TABLE}.sigepArchivo ;;
  }
  dimension: sigep_archivo_aws {
    type: string
    sql: ${TABLE}.sigepArchivoAWS ;;
  }
  dimension: sigep_descripcion {
    type: string
    sql: ${TABLE}.sigepDescripcion ;;
  }
  dimension: sigep_hallazgos {
    type: string
    sql: ${TABLE}.sigepHallazgos ;;
  }
  dimension: sigep_visualizar {
    type: string
    sql: ${TABLE}.sigepVisualizar ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipoDocumento ;;
  }
  dimension: tipo_personalizado {
    type: string
    sql: ${TABLE}.tipoPersonalizado ;;
  }
  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
