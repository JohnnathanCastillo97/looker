view: comentarios_cumplimiento_corona {
  sql_table_name: bd_ic_cliente.comentarios_cumplimiento_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }
  dimension: consulta_lexis {
    type: string
    sql: ${TABLE}.consulta_lexis ;;
  }
  dimension: consulta_rndc {
    type: string
    sql: ${TABLE}.consulta_rndc ;;
  }
  dimension: consulta_runt {
    type: string
    sql: ${TABLE}.consulta_runt ;;
  }
  dimension: cumple {
    type: string
    sql: ${TABLE}.cumple ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension_group: fecha_visita_domiciliaria {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_visita_domiciliaria ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_region_cliente {
    type: number
    sql: ${TABLE}.id_region_cliente ;;
  }
  dimension: seccion {
    type: string
    sql: ${TABLE}.seccion ;;
  }
  dimension: usuario_registra {
    type: number
    sql: ${TABLE}.usuario_registra ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
