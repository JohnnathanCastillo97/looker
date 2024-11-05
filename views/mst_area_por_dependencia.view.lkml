view: mst_area_por_dependencia {
  sql_table_name: bd_ic_cliente.mst_area_por_dependencia ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }
  dimension: cod_area {
    type: string
    sql: ${TABLE}.cod_area ;;
  }
  dimension: cod_dependencia {
    type: string
    sql: ${TABLE}.cod_dependencia ;;
  }
  dimension: dependencia {
    type: string
    sql: ${TABLE}.dependencia ;;
  }
  dimension: empresa_id {
    type: number
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
