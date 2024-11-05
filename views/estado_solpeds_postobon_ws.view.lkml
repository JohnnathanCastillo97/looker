view: estado_solpeds_postobon_ws {
  sql_table_name: bd_ic_cliente.estado_solpeds_postobon_ws ;;
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
  dimension: num_sol_ped {
    type: string
    sql: ${TABLE}.NumSolPed ;;
  }
  dimension: pos_sol_ped {
    type: string
    sql: ${TABLE}.PosSolPed ;;
  }
  dimension: status_li {
    type: string
    sql: ${TABLE}.StatusLi ;;
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
