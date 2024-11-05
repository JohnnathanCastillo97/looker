view: usuarios_token_session {
  sql_table_name: bd_ic_cliente.usuarios_token_session ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: dispositivo_acceso {
    type: string
    sql: ${TABLE}.dispositivo_acceso ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_caducidad {
    type: string
    sql: ${TABLE}.fecha_caducidad ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: ip_session {
    type: string
    sql: ${TABLE}.ip_session ;;
  }
  dimension: token_cif {
    type: string
    sql: ${TABLE}.token_cif ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, usuarios.username, usuarios.id]
  }
}
