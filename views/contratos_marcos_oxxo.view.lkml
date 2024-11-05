view: contratos_marcos_oxxo {
  sql_table_name: bd_ic_cliente.contratos_marcos_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: cliente_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.clienteId ;;
  }
  dimension: comprador {
    type: string
    sql: ${TABLE}.comprador ;;
  }
  dimension: contrato {
    type: string
    sql: ${TABLE}.contrato ;;
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
  dimension: dias_pago {
    type: string
    sql: ${TABLE}.diasPago ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_inicio {
    type: string
    sql: ${TABLE}.fechaInicio ;;
  }
  dimension: leadtime {
    type: string
    sql: ${TABLE}.leadtime ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: negociador {
    type: string
    sql: ${TABLE}.negociador ;;
  }
  dimension: nombre_catalogo {
    type: string
    sql: ${TABLE}.nombreCatalogo ;;
  }
  dimension: oferta_adjudicacion_id {
    type: string
    sql: ${TABLE}.ofertaAdjudicacionId ;;
  }
  dimension: oferta_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ofertaId ;;
  }
  dimension: otrosi {
    type: string
    sql: ${TABLE}.otrosi ;;
  }
  dimension: proveedor_id {
    type: string
    sql: ${TABLE}.proveedorId ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: subcategoria {
    type: string
    sql: ${TABLE}.subcategoria ;;
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
  dimension: valor_contrato {
    type: string
    sql: ${TABLE}.valorContrato ;;
  }
  dimension: vigencia {
    type: string
    sql: ${TABLE}.vigencia ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id, ofertas.id]
  }
}
