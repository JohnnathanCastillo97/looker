view: contratos_adendos_valor {
  sql_table_name: bd_ic_cliente.contratos_adendos_valor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_adendo {
    type: number
    sql: ${TABLE}.cod_adendo ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualiacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualiacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: negativo {
    type: string
    sql: ${TABLE}.negativo ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: pcc_id {
    type: number
    sql: ${TABLE}.pcc_id ;;
  }
  dimension: solped {
    type: number
    sql: ${TABLE}.solped ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
