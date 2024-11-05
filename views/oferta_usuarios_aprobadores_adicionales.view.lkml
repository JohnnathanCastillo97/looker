view: oferta_usuarios_aprobadores_adicionales {
  sql_table_name: bd_ic_cliente.oferta_usuarios_aprobadores_adicionales ;;
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
  dimension: oferta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oferta_id ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ofertas.id, usuarios.username, usuarios.id]
  }
}
