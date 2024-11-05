view: clientes_modulos_permisos {
  sql_table_name: bd_ic_cliente.clientes_modulos_permisos ;;

  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: cod_modulo {
    type: number
    sql: ${TABLE}.cod_modulo ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_permiso {
    type: number
    sql: ${TABLE}.id_permiso ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
  }
}
