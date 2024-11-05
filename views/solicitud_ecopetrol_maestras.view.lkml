view: solicitud_ecopetrol_maestras {
  sql_table_name: bd_ic_cliente.solicitud_ecopetrol_maestras ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: nombre_campo {
    type: string
    sql: ${TABLE}.nombre_campo ;;
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: valor_campo {
    type: string
    sql: ${TABLE}.valor_campo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
