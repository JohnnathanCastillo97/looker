view: mantenimientos_cliente {
  sql_table_name: bd_ic_cliente.mantenimientos_cliente ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension_group: dia_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dia_fin ;;
  }
  dimension_group: dia_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dia_inicio ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: hora_fin {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_fin ;;
  }
  dimension_group: hora_inicio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_inicio ;;
  }
  dimension: restringir_acceso {
    type: string
    sql: ${TABLE}.restringir_acceso ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
