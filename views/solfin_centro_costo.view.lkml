view: solfin_centro_costo {
  sql_table_name: bd_ic_cliente.solfin_centro_costo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cia_cc {
    type: string
    sql: ${TABLE}.cia_cc ;;
  }
  dimension: descentros_costo_cc {
    type: string
    sql: ${TABLE}.descentrosCosto_cc ;;
  }
  dimension: estado_cc {
    type: string
    sql: ${TABLE}.estado_cc ;;
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
  dimension: idcentros_costo_cc {
    type: string
    sql: ${TABLE}.idcentrosCosto_cc ;;
  }
  dimension: razonsocial_cc {
    type: string
    sql: ${TABLE}.razonsocial_cc ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
