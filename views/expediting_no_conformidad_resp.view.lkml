view: expediting_no_conformidad_resp {
  sql_table_name: bd_ic_cliente.expediting_no_conformidad_resp ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_estimada_solucion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_estimada_solucion ;;
  }
  dimension: file_path {
    type: string
    sql: ${TABLE}.file_path ;;
  }
  dimension: id_no_conformidad {
    type: number
    sql: ${TABLE}.id_no_conformidad ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: update_user {
    type: number
    sql: ${TABLE}.update_user ;;
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
