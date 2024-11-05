view: historico_equipo_cargado_por_proveedor_acuacar {
  sql_table_name: bd_ic_cliente.historico_equipo_cargado_por_proveedor_acuacar ;;
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
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: equipo_id {
    type: number
    sql: ${TABLE}.equipo_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
