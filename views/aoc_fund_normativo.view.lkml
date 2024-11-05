view: aoc_fund_normativo {
  sql_table_name: bd_ic_cliente.aoc_fund_normativo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension: id_aoc {
    type: number
    sql: ${TABLE}.id_aoc ;;
  }
  dimension: id_forma_pago {
    type: number
    sql: ${TABLE}.id_forma_pago ;;
  }
  dimension: id_tipo_contrato {
    type: number
    sql: ${TABLE}.id_tipo_contrato ;;
  }
  dimension: importacion_tecnologia {
    type: string
    sql: ${TABLE}.importacion_tecnologia ;;
  }
  dimension: lugar_ejecucion {
    type: number
    sql: ${TABLE}.lugar_ejecucion ;;
  }
  dimension: lugar_ejecucion_pais {
    type: number
    sql: ${TABLE}.lugar_ejecucion_pais ;;
  }
  dimension: observacion_forma_pago {
    type: string
    sql: ${TABLE}.observacion_forma_pago ;;
  }
  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }
  dimension: tipo_inicial_contrato {
    type: string
    sql: ${TABLE}.tipo_inicial_contrato ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
