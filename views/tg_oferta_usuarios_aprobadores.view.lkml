view: tg_oferta_usuarios_aprobadores {
  sql_table_name: bd_ic_cliente.tg_oferta_usuarios_aprobadores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accesos {
    type: string
    sql: ${TABLE}.accesos ;;
  }
  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
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
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_usuario_aprobador {
    type: number
    sql: ${TABLE}.id_usuario_aprobador ;;
  }
  dimension: id_usuario_creacion {
    type: number
    sql: ${TABLE}.id_usuario_creacion ;;
  }
  dimension: id_usuario_modifica {
    type: number
    sql: ${TABLE}.id_usuario_modifica ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
