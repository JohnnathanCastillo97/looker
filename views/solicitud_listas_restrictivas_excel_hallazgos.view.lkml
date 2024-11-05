view: solicitud_listas_restrictivas_excel_hallazgos {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_excel_hallazgos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: columna_detalle {
    type: string
    sql: ${TABLE}.columnaDetalle ;;
  }
  dimension: columna_riesgo {
    type: string
    sql: ${TABLE}.columnaRiesgo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: detalles {
    type: string
    sql: ${TABLE}.detalles ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_base {
    type: string
    sql: ${TABLE}.idBase ;;
  }
  dimension: id_excel_datos {
    type: number
    sql: ${TABLE}.idExcelDatos ;;
  }
  dimension: riesgo {
    type: string
    sql: ${TABLE}.riesgo ;;
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
