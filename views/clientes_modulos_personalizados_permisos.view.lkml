view: clientes_modulos_personalizados_permisos {
  sql_table_name: bd_ic_cliente.clientes_modulos_personalizados_permisos ;;

  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: cod_modulo_personalizado {
    type: number
    sql: ${TABLE}.cod_modulo_personalizado ;;
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
  dimension: id_permiso {
    type: number
    sql: ${TABLE}.id_permiso ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
