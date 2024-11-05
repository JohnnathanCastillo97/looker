view: criterios_habilitacion {
  sql_table_name: bd_ic_cliente.criterios_habilitacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: empresa_id {
    type: number
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: num_criterios {
    type: string
    sql: ${TABLE}.num_criterios ;;
  }
  dimension: porcentaje {
    type: string
    sql: ${TABLE}.porcentaje ;;
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: vista_criterio {
    type: string
    sql: ${TABLE}.vista_criterio ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
