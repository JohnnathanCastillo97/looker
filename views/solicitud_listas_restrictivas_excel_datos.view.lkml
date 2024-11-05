view: solicitud_listas_restrictivas_excel_datos {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_excel_datos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: hallazgos {
    type: string
    sql: ${TABLE}.hallazgos ;;
  }
  dimension: id_solicitud_lista_restrictiva_diligenciamiento {
    type: number
    sql: ${TABLE}.idSolicitudListaRestrictivaDiligenciamiento ;;
  }
  dimension: id_solicitud_listas_restrictivas_excel {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivasExcel ;;
  }
  dimension: identificacion {
    type: string
    sql: ${TABLE}.identificacion ;;
  }
  dimension: nombre_proveedor {
    type: string
    sql: ${TABLE}.nombreProveedor ;;
  }
  dimension: numero_identificacion {
    type: string
    sql: ${TABLE}.numeroIdentificacion ;;
  }
  dimension: razon_social_nombre {
    type: string
    sql: ${TABLE}.razonSocialNombre ;;
  }
  dimension: riesgo {
    type: string
    sql: ${TABLE}.riesgo ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_contraparte {
    type: string
    sql: ${TABLE}.tipoContraparte ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipoDocumento ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: url_excel_aws {
    type: string
    sql: ${TABLE}.urlExcelAws ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
