view: usuarios2 {
  sql_table_name: bd_ic_cliente.usuarios2 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aprobador_catalogos {
    type: string
    sql: ${TABLE}.aprobador_catalogos ;;
  }
  dimension: cargo {
    type: string
    sql: ${TABLE}.cargo ;;
  }
  dimension: ciudad_id {
    type: number
    sql: ${TABLE}.ciudad_id ;;
  }
  dimension: documento {
    type: number
    sql: ${TABLE}.documento ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: empresa_id {
    type: number
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: evaluador_hse {
    type: string
    sql: ${TABLE}.evaluador_hse ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_nacimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension_group: fecharegistro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecharegistro ;;
  }
  dimension: foto_perfil {
    type: string
    sql: ${TABLE}.foto_perfil ;;
  }
  dimension: id_old {
    type: string
    sql: ${TABLE}.id_old ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: password_nocrip {
    type: string
    sql: ${TABLE}.password_nocrip ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }
  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }
  dimension: usuario_sap {
    type: string
    sql: ${TABLE}.usuario_sap ;;
  }
  measure: count {
    type: count
    drill_fields: [id, username]
  }
}
