view: numerales_clausulas {
  sql_table_name: bd_ic_cliente.numerales_clausulas ;;

  dimension: descripcion_num {
    type: string
    sql: ${TABLE}.descripcion_num ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: id_clausula {
    type: number
    sql: ${TABLE}.id_clausula ;;
  }
  dimension: id_numeral {
    type: number
    sql: ${TABLE}.id_numeral ;;
  }
  dimension_group: registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registro ;;
  }
  dimension: tipo_numeral {
    type: yesno
    sql: ${TABLE}.tipo_numeral ;;
  }
  dimension: tipos_contratos {
    type: string
    sql: ${TABLE}.tipos_contratos ;;
  }
  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }
  measure: count {
    type: count
  }
}
