view: solfin_factura_reteciones_23_06_23 {
  sql_table_name: bd_ic_cliente.solfin_factura_reteciones_23_06_23 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: concat_fact {
    type: string
    sql: ${TABLE}.concat_fact ;;
  }
  dimension_group: fecha_retencion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_retencion ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: importe_retencion_doc {
    type: string
    sql: ${TABLE}.importe_retencion_doc ;;
  }
  dimension: importe_retencion_loc {
    type: string
    sql: ${TABLE}.importe_retencion_loc ;;
  }
  dimension: indicador_retencion {
    type: string
    sql: ${TABLE}.indicador_retencion ;;
  }
  dimension: pais_retencion {
    type: string
    sql: ${TABLE}.pais_retencion ;;
  }
  dimension: tipo_retencion {
    type: string
    sql: ${TABLE}.tipo_retencion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
