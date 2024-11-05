view: visitas_proveedor_gestion_requisitos {
  sql_table_name: bd_ic_cliente.visitas_proveedor_gestion_requisitos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: calificacion {
    type: string
    sql: ${TABLE}.calificacion ;;
  }
  dimension: evidencia {
    type: string
    sql: ${TABLE}.evidencia ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: id_requisito {
    type: number
    sql: ${TABLE}.id_requisito ;;
  }
  dimension: id_visita {
    type: number
    sql: ${TABLE}.id_visita ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
