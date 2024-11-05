view: solicitudes_sap {
  sql_table_name: bd_ic_cliente.solicitudes_sap ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cliente_id ;;
  }
  dimension: contenido {
    type: string
    sql: ${TABLE}.contenido ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: modulo {
    type: string
    sql: ${TABLE}.modulo ;;
  }
  dimension: object_id {
    type: number
    sql: ${TABLE}.object_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id]
  }
}
