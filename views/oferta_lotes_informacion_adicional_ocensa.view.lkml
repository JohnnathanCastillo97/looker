view: oferta_lotes_informacion_adicional_ocensa {
  sql_table_name: bd_ic_cliente.oferta_lotes_informacion_adicional_ocensa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clase {
    type: string
    sql: ${TABLE}.clase ;;
  }
  dimension: cod_lote {
    type: number
    sql: ${TABLE}.cod_lote ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_liberacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_liberacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: informacion_servicio {
    type: string
    sql: ${TABLE}.informacion_servicio ;;
  }
  dimension: responsable {
    type: string
    sql: ${TABLE}.responsable ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
