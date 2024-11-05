view: tg_comite_plantilla_usuarios_permanentes {
  sql_table_name: bd_ic_cliente.tg_comite_plantilla_usuarios_permanentes ;;

  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: tema_comite {
    type: string
    sql: ${TABLE}.tema_comite ;;
  }
  dimension: tipo_comite {
    type: string
    sql: ${TABLE}.tipo_comite ;;
  }
  dimension: tipo_usuario {
    type: number
    sql: ${TABLE}.tipo_usuario ;;
  }
  measure: count {
    type: count
  }
}
