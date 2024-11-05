view: solicitud_polizas {
  sql_table_name: bd_ic_cliente.solicitud_polizas ;;
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
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_poliza {
    type: number
    sql: ${TABLE}.id_poliza ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: nombre_poliza {
    type: string
    sql: ${TABLE}.nombre_poliza ;;
  }
  dimension: porcentaje_poliza {
    type: number
    sql: ${TABLE}.porcentaje_poliza ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: valor_asegurado {
    type: string
    sql: ${TABLE}.valor_asegurado ;;
  }
  dimension: vigencia_poliza {
    type: string
    sql: ${TABLE}.vigencia_poliza ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
