view: solfin_agentes_usuarios {
  sql_table_name: bd_ic_cliente.solfin_agentes_usuarios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_agente {
    type: string
    sql: ${TABLE}.id_agente ;;
  }
  dimension: id_usuario {
    type: string
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
