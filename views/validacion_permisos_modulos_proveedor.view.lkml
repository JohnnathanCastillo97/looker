view: validacion_permisos_modulos_proveedor {
  sql_table_name: bd_ic_cliente.validacion_permisos_modulos_proveedor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_perfil {
    type: number
    sql: ${TABLE}.id_perfil ;;
  }
  dimension: id_usuario_registra {
    type: number
    sql: ${TABLE}.id_usuario_registra ;;
  }
  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }
  dimension: tipo_validacion {
    type: string
    sql: ${TABLE}.tipo_validacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
