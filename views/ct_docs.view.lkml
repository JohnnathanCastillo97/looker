view: ct_docs {
  sql_table_name: bd_ic_cliente.ct_docs ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cabecera {
    type: number
    sql: ${TABLE}.id_cabecera ;;
  }
  dimension: id_docs {
    type: number
    sql: ${TABLE}.id_docs ;;
  }
  dimension: id_origen {
    type: number
    sql: ${TABLE}.id_origen ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
  }
}
