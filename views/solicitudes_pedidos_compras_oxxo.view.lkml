view: solicitudes_pedidos_compras_oxxo {
  sql_table_name: bd_ic_cliente.solicitudes_pedidos_compras_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anterior_version_id {
    type: number
    sql: ${TABLE}.anteriorVersionId ;;
  }
  dimension: catalogo_compra_cabecera_id {
    type: number
    sql: ${TABLE}.catalogoCompraCabeceraId ;;
  }
  dimension: cr_tienda {
    type: string
    sql: ${TABLE}.crTienda ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: string
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: entrega_total {
    type: string
    sql: ${TABLE}.entregaTotal ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: finalizacion_edicion {
    type: string
    sql: ${TABLE}.finalizacionEdicion ;;
  }
  dimension: formato_prioridad {
    type: string
    sql: ${TABLE}.formatoPrioridad ;;
  }
  dimension: numero_folio {
    type: string
    sql: ${TABLE}.numeroFolio ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }
  dimension: remision {
    type: string
    sql: ${TABLE}.remision ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: secuencia_solicitud {
    type: string
    sql: ${TABLE}.secuenciaSolicitud ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_anadido {
    type: string
    sql: ${TABLE}.tipoAnadido ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
  dimension: version_edicion {
    type: string
    sql: ${TABLE}.versionEdicion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
