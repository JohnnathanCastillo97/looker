view: catalogos_historial_compra_item_aprobacion {
  sql_table_name: bd_ic_cliente.catalogos_historial_compra_item_aprobacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_ajustada {
    type: number
    sql: ${TABLE}.cantidad_ajustada ;;
  }
  dimension: cod_cabecera {
    type: number
    sql: ${TABLE}.cod_cabecera ;;
  }
  dimension: cod_item_contenido {
    type: number
    sql: ${TABLE}.cod_item_contenido ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
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
  dimension: id_usuario_accion {
    type: number
    sql: ${TABLE}.id_usuario_accion ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: tipo_usuario {
    type: string
    sql: ${TABLE}.tipo_usuario ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
