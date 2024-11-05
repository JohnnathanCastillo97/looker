view: solfin_partida_presupuestal {
  sql_table_name: bd_ic_cliente.solfin_partida_presupuestal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cia_pp {
    type: string
    sql: ${TABLE}.cia_pp ;;
  }
  dimension: despartidaspresupuestal_pp {
    type: string
    sql: ${TABLE}.despartidaspresupuestal_pp ;;
  }
  dimension: estado_pp {
    type: string
    sql: ${TABLE}.estado_pp ;;
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
  dimension: idpartidaspresupuestal_pp {
    type: string
    sql: ${TABLE}.idpartidaspresupuestal_pp ;;
  }
  dimension: razonsocial_pp {
    type: string
    sql: ${TABLE}.razonsocial_pp ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
