view: mst_ans_hocol {
  sql_table_name: bd_ic_cliente.mst_ans_hocol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: dias_ans {
    type: number
    sql: ${TABLE}.dias_ans ;;
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
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: local {
    type: string
    sql: ${TABLE}.local ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }
  dimension: rango_inferior {
    type: number
    sql: ${TABLE}.rango_inferior ;;
  }
  dimension: rango_superior {
    type: number
    sql: ${TABLE}.rango_superior ;;
  }
  dimension: registro {
    type: string
    sql: ${TABLE}.registro ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_modificacion {
    type: number
    sql: ${TABLE}.usuario_modificacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
