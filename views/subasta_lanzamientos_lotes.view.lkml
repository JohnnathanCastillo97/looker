view: subasta_lanzamientos_lotes {
  sql_table_name: bd_ic_cliente.subasta_lanzamientos_lotes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_lanzamiento {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_lanzamiento ;;
  }
  dimension: id_lote {
    type: number
    sql: ${TABLE}.id_lote ;;
  }
  dimension: id_subasta {
    type: number
    sql: ${TABLE}.id_subasta ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
