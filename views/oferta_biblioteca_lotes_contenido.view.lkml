view: oferta_biblioteca_lotes_contenido {
  sql_table_name: bd_ic_cliente.oferta_biblioteca_lotes_contenido ;;

  dimension: cod_item {
    type: number
    sql: ${TABLE}.cod_item ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
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
  dimension: id_itemcol {
    type: number
    sql: ${TABLE}.id_itemcol ;;
  }
  dimension: requirido {
    type: string
    sql: ${TABLE}.requirido ;;
  }
  dimension: secuencia {
    type: number
    sql: ${TABLE}.secuencia ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_campo {
    type: string
    sql: ${TABLE}.tipo_campo ;;
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