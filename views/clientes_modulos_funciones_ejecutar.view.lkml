view: clientes_modulos_funciones_ejecutar {
  sql_table_name: bd_ic_cliente.clientes_modulos_funciones_ejecutar ;;

  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
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
  dimension: funcion {
    type: string
    sql: ${TABLE}.funcion ;;
  }
  dimension: id_funcion {
    type: number
    sql: ${TABLE}.id_funcion ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
  }
}
