view: catalogos_compras_cabecera_oxxo {
  sql_table_name: bd_ic_cliente.catalogos_compras_cabecera_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: catalogo_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.catalogoId ;;
  }
  dimension: cliente_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.clienteId ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_entrega_deseada {
    type: string
    sql: ${TABLE}.fechaEntregaDeseada ;;
  }
  dimension: monto_aprobado_solicitud_inversion {
    type: string
    sql: ${TABLE}.montoAprobadoSolicitudInversion ;;
  }
  dimension: numero_folio {
    type: string
    sql: ${TABLE}.numeroFolio ;;
  }
  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }
  dimension: solicitud_inversion {
    type: string
    sql: ${TABLE}.solicitudInversion ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tiendaId ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipoSolicitud ;;
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
  measure: count {
    type: count
    drill_fields: [id, catalogos.id, clientes.id]
  }
}
