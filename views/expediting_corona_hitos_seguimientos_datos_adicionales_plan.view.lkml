view: expediting_corona_hitos_seguimientos_datos_adicionales_plan {
  sql_table_name: bd_ic_cliente.expediting_corona_hitos_seguimientos_datos_adicionales_plan ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aprobacion {
    type: string
    sql: ${TABLE}.aprobacion ;;
  }
  dimension_group: fecha_alistamiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_alistamiento ;;
  }
  dimension_group: fecha_compra_materia {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_compra_materia ;;
  }
  dimension_group: fecha_diseno {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_diseno ;;
  }
  dimension_group: fecha_fabricacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fabricacion ;;
  }
  dimension_group: fecha_inspeccion_tpi {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inspeccion_tpi ;;
  }
  dimension_group: fecha_pruebas_fat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_pruebas_fat ;;
  }
  dimension: seguimiento_id {
    type: number
    sql: ${TABLE}.seguimiento_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
