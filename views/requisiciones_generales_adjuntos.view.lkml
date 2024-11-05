view: requisiciones_generales_adjuntos {
  sql_table_name: bd_ic_cliente.requisiciones_generales_adjuntos ;;

  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: cod_requisicion {
    type: number
    sql: ${TABLE}.cod_requisicion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_adjunto {
    type: number
    sql: ${TABLE}.id_adjunto ;;
  }
  dimension_group: registro_fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registro_fecha ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  measure: count {
    type: count
  }
}
