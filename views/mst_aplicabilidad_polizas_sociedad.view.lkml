view: mst_aplicabilidad_polizas_sociedad {
  sql_table_name: bd_ic_cliente.mst_aplicabilidad_polizas_sociedad ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comparador_no_aplica {
    type: string
    sql: ${TABLE}.comparador_no_aplica ;;
  }
  dimension: comparador_si_aplica {
    type: string
    sql: ${TABLE}.comparador_si_aplica ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_sociedad {
    type: number
    sql: ${TABLE}.id_sociedad ;;
  }
  dimension: tipo_parametro {
    type: string
    sql: ${TABLE}.tipo_parametro ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: valor_no_aplica {
    type: number
    sql: ${TABLE}.valor_no_aplica ;;
  }
  dimension: valor_si_aplica {
    type: number
    sql: ${TABLE}.valor_si_aplica ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
