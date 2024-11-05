view: configuraciones_adicionales_contenido {
  sql_table_name: bd_ic_cliente.configuraciones_adicionales_contenido ;;
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
  dimension: configuracion_adicional_id {
    type: number
    sql: ${TABLE}.configuracion_adicional_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: parametro {
    type: string
    sql: ${TABLE}.parametro ;;
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
