view: historico_personal_cargado_por_proveedor_acuacar {
  sql_table_name: bd_ic_cliente.historico_personal_cargado_por_proveedor_acuacar ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: personal_id {
    type: number
    sql: ${TABLE}.personal_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
