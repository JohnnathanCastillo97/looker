view: mst_usuarios_grupos_analistas {
  sql_table_name: bd_ic_cliente.mst_usuarios_grupos_analistas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_base {
    type: number
    sql: ${TABLE}.cantidad_base ;;
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
  dimension: grupo_id {
    type: number
    sql: ${TABLE}.grupo_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuarios_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuarios_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, usuarios.username, usuarios.id]
  }
}
