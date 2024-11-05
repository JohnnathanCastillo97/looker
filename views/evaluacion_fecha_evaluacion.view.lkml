view: evaluacion_fecha_evaluacion {
  sql_table_name: bd_ic_cliente.evaluacion_fecha_evaluacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_evaluacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_evaluacion ;;
  }
  dimension: id_evaluacion {
    type: number
    sql: ${TABLE}.id_evaluacion ;;
  }
  dimension_group: periodo_evaluado_desde {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.periodo_evaluado_desde ;;
  }
  dimension_group: periodo_evaluado_hasta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.periodo_evaluado_hasta ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
