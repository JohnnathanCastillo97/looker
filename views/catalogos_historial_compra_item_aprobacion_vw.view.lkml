view: catalogos_historial_compra_item_aprobacion_vw {
  sql_table_name: bd_ic_cliente.catalogos_historial_compra_item_aprobacion_vw ;;

  dimension: cod_compra_contenido {
    type: number
    sql: ${TABLE}.cod_compra_contenido ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_entrega_estimada {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrega_estimada ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  measure: count {
    type: count
  }
}
