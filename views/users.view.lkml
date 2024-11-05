view: users {
  sql_table_name: bd_ic_cliente.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo_old {
    type: number
    sql: ${TABLE}.codigo_old ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension_group: email_verified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.email_verified_at ;;
  }
  dimension: empresa {
    type: number
    sql: ${TABLE}.empresa ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: foto {
    type: string
    sql: ${TABLE}.foto ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: perfil {
    type: number
    sql: ${TABLE}.perfil ;;
  }
  dimension: remember_token {
    type: string
    sql: ${TABLE}.remember_token ;;
  }
  dimension: tipo {
    type: yesno
    sql: ${TABLE}.tipo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	cart_headers_ocns.count,
	oauth_access_tokens.count,
	oauth_auth_codes.count,
	oauth_clients.count
	]
  }

}
