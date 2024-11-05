view: paa_ans_fecha_real {
  sql_table_name: bd_ic_cliente.paa_ans_fecha_real ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension_group: fecha_real {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_real ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_paa_linea {
    type: number
    sql: ${TABLE}.id_paa_linea ;;
  }
  dimension: id_paa_linea_etapa_ans {
    type: number
    sql: ${TABLE}.id_paa_linea_etapa_ans ;;
  }
  dimension: paa_linea_tipo_etapa_ans {
    type: number
    sql: ${TABLE}.paa_linea_tipo_etapa_ans ;;
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
