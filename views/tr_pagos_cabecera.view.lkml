view: tr_pagos_cabecera {
  sql_table_name: bd_ic_cliente.tr_pagos_cabecera ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: cod_contrato {
    type: number
    sql: ${TABLE}.cod_contrato ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
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
  dimension_group: fecha_creacion_registro {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_creacion_registro ;;
  }
  dimension_group: fecha_creacion_sap {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_creacion_sap ;;
  }
  dimension: nit_proveedor_sap {
    type: string
    sql: ${TABLE}.nit_proveedor_sap ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_sap {
    type: string
    sql: ${TABLE}.usuario_sap ;;
  }
  dimension: valor_fact_efect {
    type: number
    sql: ${TABLE}.valorFactEfect ;;
  }
  dimension: valor_por_pagar {
    type: number
    sql: ${TABLE}.valorPorPagar ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
