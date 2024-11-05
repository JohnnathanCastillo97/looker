view: zmold_catalogo_permisos_aprobaciones {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogo_permisos_aprobaciones ;;

  dimension: cod_almacen {
    type: number
    sql: ${TABLE}.cod_almacen ;;
  }
  dimension: cod_usuario {
    type: number
    sql: ${TABLE}.cod_usuario ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
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
