view: solfin_noti_correo_lect {
  sql_table_name: bd_ic_cliente.solfin_noti_correo_lect ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: email_lect {
    type: string
    sql: ${TABLE}.email_lect ;;
  }
  dimension: email_prov {
    type: string
    sql: ${TABLE}.email_prov ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_envio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_envio ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: mensaje {
    type: string
    sql: ${TABLE}.mensaje ;;
  }
  dimension: msg {
    type: string
    sql: ${TABLE}.msg ;;
  }
  dimension: msg_asunto {
    type: string
    sql: ${TABLE}.msg_asunto ;;
  }
  dimension: msg_txt {
    type: string
    sql: ${TABLE}.msg_txt ;;
  }
  dimension: razon_social_prv {
    type: string
    sql: ${TABLE}.razon_social_prv ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
