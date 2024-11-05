view: oferta_adjudicaciones {
  sql_table_name: bd_ic_cliente.oferta_adjudicaciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adicional {
    type: string
    sql: ${TABLE}.adicional ;;
  }
  dimension: carta_adjudicacion {
    type: string
    sql: ${TABLE}.carta_adjudicacion ;;
  }
  dimension: consorcio {
    type: string
    sql: ${TABLE}.consorcio ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: detalle_consorcio {
    type: string
    sql: ${TABLE}.detalle_consorcio ;;
  }
  dimension: dias_revision {
    type: number
    sql: ${TABLE}.dias_revision ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_mod_delegacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_mod_delegacion ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: porcentaje {
    type: number
    sql: ${TABLE}.porcentaje ;;
  }
  dimension: tasa_cambio {
    type: number
    sql: ${TABLE}.tasa_cambio ;;
  }
  dimension: terminos_reajuste {
    type: string
    sql: ${TABLE}.terminos_reajuste ;;
  }
  dimension: unicontemp {
    type: string
    sql: ${TABLE}.unicontemp ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_mod_delegacion {
    type: number
    sql: ${TABLE}.usuario_mod_delegacion ;;
  }
  dimension: validez_contrato {
    type: number
    sql: ${TABLE}.validez_contrato ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  dimension: valor_total_smmlv {
    type: string
    sql: ${TABLE}.valorTotalSMMLV ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
