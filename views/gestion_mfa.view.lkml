view: gestion_mfa {
  sql_table_name: bd_ic_cliente.gestion_mfa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
