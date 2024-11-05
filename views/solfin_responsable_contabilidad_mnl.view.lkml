view: solfin_responsable_contabilidad_mnl {
  sql_table_name: bd_ic_cliente.solfin_responsable_contabilidad_mnl ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: email_responsable {
    type: string
    sql: ${TABLE}.email_responsable ;;
  }
  dimension: empresa_cod {
    type: string
    sql: ${TABLE}.empresa_cod ;;
  }
  dimension: empresa_id {
    type: number
    sql: ${TABLE}.empresa_id ;;
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
  dimension: id_responsable {
    type: number
    sql: ${TABLE}.id_responsable ;;
  }
  dimension: responsable {
    type: string
    sql: ${TABLE}.responsable ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
