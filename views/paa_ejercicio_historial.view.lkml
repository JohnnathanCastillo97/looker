view: paa_ejercicio_historial {
  sql_table_name: bd_ic_cliente.paa_ejercicio_historial ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_paa_ejercicio {
    type: number
    sql: ${TABLE}.id_paa_ejercicio ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_delegacion {
    type: number
    sql: ${TABLE}.usuario_delegacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
