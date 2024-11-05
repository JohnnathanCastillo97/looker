view: mensajes_consolidados {
  sql_table_name: bd_ic_cliente.mensajes_consolidados ;;
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
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: ids_mensaje {
    type: string
    sql: ${TABLE}.ids_mensaje ;;
  }
  dimension: ids_proveedores {
    type: string
    sql: ${TABLE}.ids_proveedores ;;
  }
  dimension: ids_ultimo_cambio {
    type: string
    sql: ${TABLE}.ids_ultimo_cambio ;;
  }
  dimension: tipo_envio {
    type: string
    sql: ${TABLE}.tipo_envio ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
