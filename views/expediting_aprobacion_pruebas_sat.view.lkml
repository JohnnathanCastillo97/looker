view: expediting_aprobacion_pruebas_sat {
  sql_table_name: bd_ic_cliente.expediting_aprobacion_pruebas_sat ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aprobacion {
    type: string
    sql: ${TABLE}.aprobacion ;;
  }
  dimension: create_user {
    type: number
    sql: ${TABLE}.create_user ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: id_prueba_sat {
    type: number
    sql: ${TABLE}.id_prueba_sat ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
