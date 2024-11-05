view: mst_conteo_proveedores_solicitudes {
  sql_table_name: bd_ic_cliente.mst_conteo_proveedores_solicitudes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: extranjero_completa {
    type: number
    sql: ${TABLE}.extranjero_completa ;;
  }
  dimension: extranjero_simcom {
    type: number
    sql: ${TABLE}.extranjero_simcom ;;
  }
  dimension: extranjero_simple {
    type: number
    sql: ${TABLE}.extranjero_simple ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: nacional_completa {
    type: number
    sql: ${TABLE}.nacional_completa ;;
  }
  dimension: nacional_local_completa {
    type: number
    sql: ${TABLE}.nacional_local_completa ;;
  }
  dimension: nacional_local_simcom {
    type: number
    sql: ${TABLE}.nacional_local_simcom ;;
  }
  dimension: nacional_local_simple {
    type: number
    sql: ${TABLE}.nacional_local_simple ;;
  }
  dimension: nacional_simcom {
    type: number
    sql: ${TABLE}.nacional_simcom ;;
  }
  dimension: nacional_simple {
    type: number
    sql: ${TABLE}.nacional_simple ;;
  }
  dimension: proveedores {
    type: string
    sql: ${TABLE}.proveedores ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
