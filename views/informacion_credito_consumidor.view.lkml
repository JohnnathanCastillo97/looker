view: informacion_credito_consumidor {
  sql_table_name: bd_ic_cliente.informacion_credito_consumidor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: analisis_credito {
    type: string
    sql: ${TABLE}.analisis_credito ;;
  }
  dimension: carta_aprobacion {
    type: string
    sql: ${TABLE}.carta_aprobacion ;;
  }
  dimension: decision_credito {
    type: string
    sql: ${TABLE}.decision_credito ;;
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
  dimension: garantias {
    type: string
    sql: ${TABLE}.garantias ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_consumidor {
    type: number
    sql: ${TABLE}.id_consumidor ;;
  }
  dimension: pagare {
    type: string
    sql: ${TABLE}.pagare ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
