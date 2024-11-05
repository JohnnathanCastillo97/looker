view: contratos_designar_administradores_supervisores {
  sql_table_name: bd_ic_cliente.contratos_designar_administradores_supervisores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contrato_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contrato_id ;;
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
  dimension_group: fecha_aceptacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aceptacion ;;
  }
  dimension_group: fecha_designacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_designacion ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: otros {
    type: string
    sql: ${TABLE}.otros ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_asignado {
    type: number
    sql: ${TABLE}.usuario_asignado ;;
  }
  dimension: usuario_que_designa {
    type: number
    sql: ${TABLE}.usuario_que_designa ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos.id]
  }
}
