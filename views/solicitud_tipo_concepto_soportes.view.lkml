view: solicitud_tipo_concepto_soportes {
  sql_table_name: bd_ic_cliente.solicitud_tipo_concepto_soportes ;;
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
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_modifica {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modifica ;;
  }
  dimension: id_tipo_concepto {
    type: number
    sql: ${TABLE}.id_tipo_concepto ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  dimension: usuario_modifica {
    type: number
    sql: ${TABLE}.usuario_modifica ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
