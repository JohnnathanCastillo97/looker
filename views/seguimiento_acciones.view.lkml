view: seguimiento_acciones {
  sql_table_name: bd_ic_cliente.seguimiento_acciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: cliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cliente_id ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: modulo_id {
    type: number
    sql: ${TABLE}.modulo_id ;;
  }
  dimension: objeto_id {
    type: number
    sql: ${TABLE}.objeto_id ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: seq_objeto {
    type: string
    sql: ${TABLE}.seq_objeto ;;
  }
  dimension: usuario_delegado {
    type: number
    sql: ${TABLE}.usuario_delegado ;;
  }
  dimension: usuario_responsable {
    type: number
    sql: ${TABLE}.usuario_responsable ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id]
  }
}
