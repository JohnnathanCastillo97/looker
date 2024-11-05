view: clientes_modulos_personalizados {
  sql_table_name: bd_ic_cliente.clientes_modulos_personalizados ;;

  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: cod_modulo {
    type: number
    sql: ${TABLE}.cod_modulo ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actializacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actializacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_modulo_personalizado {
    type: yesno
    sql: ${TABLE}.id_modulo_personalizado ;;
  }
  dimension: modulo_adicional {
    type: string
    sql: ${TABLE}.modulo_adicional ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
