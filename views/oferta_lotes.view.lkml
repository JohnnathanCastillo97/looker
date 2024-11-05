view: oferta_lotes {
  sql_table_name: bd_ic_cliente.oferta_lotes ;;

  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: cod_compania {
    type: string
    sql: ${TABLE}.cod_compania ;;
  }
  dimension: cod_oferta {
    type: number
    sql: ${TABLE}.cod_oferta ;;
  }
  dimension: cod_sobre {
    type: number
    sql: ${TABLE}.cod_sobre ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
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
  dimension: id_lote {
    type: number
    sql: ${TABLE}.id_lote ;;
  }
  dimension: nombre_lote {
    type: string
    sql: ${TABLE}.nombre_lote ;;
  }
  dimension: secuencia {
    type: number
    sql: ${TABLE}.secuencia ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
