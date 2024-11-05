view: solfin_asignaciones_analistas {
  sql_table_name: bd_ic_cliente.solfin_asignaciones_analistas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ans_id {
    type: number
    sql: ${TABLE}.ans_id ;;
  }
  dimension: area_escalar {
    type: number
    sql: ${TABLE}.area_escalar ;;
  }
  dimension: caso_id {
    type: number
    sql: ${TABLE}.caso_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_caso {
    type: string
    sql: ${TABLE}.estado_caso ;;
  }
  dimension_group: fecha_esperada_respuesta {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_esperada_respuesta ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension_group: finished {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.finished_at ;;
  }
  dimension_group: hora_fin {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_fin ;;
  }
  dimension_group: hora_inicio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_inicio ;;
  }
  dimension: motivo {
    type: string
    sql: ${TABLE}.motivo ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension_group: respuesta_proveedor {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.respuesta_proveedor ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_actual {
    type: number
    sql: ${TABLE}.usuario_actual ;;
  }
  dimension: usuario_escalamiento {
    type: number
    sql: ${TABLE}.usuario_escalamiento ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  dimension: usuario_inicial {
    type: number
    sql: ${TABLE}.usuario_inicial ;;
  }
  measure: count {
    type: count
    drill_fields: [id, usuarios.username, usuarios.id]
  }
}
