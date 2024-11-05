view: contratos_cronograma {
  sql_table_name: bd_ic_cliente.contratos_cronograma ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adiciones_contrato {
    type: string
    sql: ${TABLE}.adiciones_contrato ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: pagos_programados {
    type: string
    sql: ${TABLE}.pagos_programados ;;
  }
  dimension: plazo_ejecucion_contrato {
    type: number
    sql: ${TABLE}.plazo_ejecucion_contrato ;;
  }
  dimension: plazo_liquidacion_contrato {
    type: number
    sql: ${TABLE}.plazo_liquidacion_contrato ;;
  }
  dimension: recibo_contrato {
    type: string
    sql: ${TABLE}.recibo_contrato ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: valor_ejecucion {
    type: string
    sql: ${TABLE}.valor_ejecucion ;;
  }
  dimension: valor_inicial_contrato {
    type: string
    sql: ${TABLE}.valor_inicial_contrato ;;
  }
  dimension: valor_liquidacion {
    type: string
    sql: ${TABLE}.valor_liquidacion ;;
  }
  dimension: valor_pendiente_programar {
    type: string
    sql: ${TABLE}.valor_pendiente_programar ;;
  }
  dimension: valor_total_contrato {
    type: string
    sql: ${TABLE}.valor_total_contrato ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
