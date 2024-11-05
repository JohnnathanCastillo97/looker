view: clausulas {
  sql_table_name: bd_ic_cliente.clausulas ;;

  dimension: descripcion_clau {
    type: string
    sql: ${TABLE}.descripcion_clau ;;
  }
  dimension: estado_clau {
    type: yesno
    sql: ${TABLE}.estado_clau ;;
  }
  dimension: id_clau {
    type: number
    sql: ${TABLE}.id_clau ;;
  }
  dimension: nombre_clau {
    type: string
    sql: ${TABLE}.nombre_clau ;;
  }
  dimension_group: registro_clau {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registro_clau ;;
  }
  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }
  measure: count {
    type: count
  }
}
