view: maestras_criterios {
  sql_table_name: bd_ic_cliente.maestras_criterios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: criterio {
    type: string
    sql: ${TABLE}.criterio ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: maestra_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.maestra_id ;;
  }
  dimension: prefijo_criterio {
    type: string
    sql: ${TABLE}.prefijo_criterio ;;
  }
  dimension: requiere_aprobacion {
    type: string
    sql: ${TABLE}.requiere_aprobacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, maestras.id]
  }
}
