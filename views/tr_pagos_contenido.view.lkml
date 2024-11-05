view: tr_pagos_contenido {
  sql_table_name: bd_ic_cliente.tr_pagos_contenido ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: cod_cabecera_pago {
    type: number
    sql: ${TABLE}.cod_cabecera_pago ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: pedido {
    type: string
    sql: ${TABLE}.pedido ;;
  }
  dimension: pocision_factura {
    type: string
    sql: ${TABLE}.pocision_factura ;;
  }
  dimension: pocision_pedido {
    type: number
    sql: ${TABLE}.pocision_pedido ;;
  }
  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.unidad_medida ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
