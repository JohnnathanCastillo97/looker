view: acceso_plataforma {
  sql_table_name: bd_ic_cliente.acceso_plataforma ;;

  dimension: acceso {
    type: string
    sql: ${TABLE}.acceso ;;
  }
  dimension: cod_usuario {
    type: number
    sql: ${TABLE}.cod_usuario ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  dimension: lugar_acceso {
    type: string
    sql: ${TABLE}.lugar_acceso ;;
  }
  dimension: parametro {
    type: string
    sql: ${TABLE}.parametro ;;
  }
  dimension: tipo_parametro {
    type: string
    sql: ${TABLE}.tipo_parametro ;;
  }
  measure: count {
    type: count
  }
}
