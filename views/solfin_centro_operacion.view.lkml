view: solfin_centro_operacion {
  sql_table_name: bd_ic_cliente.solfin_centro_operacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cia_co {
    type: string
    sql: ${TABLE}.cia_co ;;
  }
  dimension: descentrooperacion_co {
    type: string
    sql: ${TABLE}.descentrooperacion_co ;;
  }
  dimension: estado_co {
    type: string
    sql: ${TABLE}.estado_co ;;
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
  dimension: idcentrooperacion_co {
    type: string
    sql: ${TABLE}.idcentrooperacion_co ;;
  }
  dimension: razonsocial_co {
    type: string
    sql: ${TABLE}.razonsocial_co ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
