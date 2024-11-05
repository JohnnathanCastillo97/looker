view: subclientes_revision_legal {
  sql_table_name: bd_ic_cliente.subclientes_revision_legal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: monto {
    type: string
    sql: ${TABLE}.monto ;;
  }
  dimension: subcliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.subcliente_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, subclientes.id]
  }
}
