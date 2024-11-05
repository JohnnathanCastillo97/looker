view: contratos_pedidos_sap {
  sql_table_name: bd_ic_cliente.contratos_pedidos_sap ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contrato_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contrato_id ;;
  }
  dimension: documento_posiciones {
    type: string
    sql: ${TABLE}.documento_posiciones ;;
  }
  dimension: documento_sap_contrato {
    type: string
    sql: ${TABLE}.documento_sap_contrato ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: numero_pedido {
    type: number
    sql: ${TABLE}.numero_pedido ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: pedido_sap_ejecucion {
    type: string
    sql: ${TABLE}.pedido_sap_ejecucion ;;
  }
  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
  }
  dimension: solicitante {
    type: number
    sql: ${TABLE}.solicitante ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos.id]
  }
}
