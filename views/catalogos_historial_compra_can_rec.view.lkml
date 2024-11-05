view: catalogos_historial_compra_can_rec {
  sql_table_name: bd_ic_cliente.catalogos_historial_compra_can_rec ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_recibida {
    type: number
    sql: ${TABLE}.cantidad_recibida ;;
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
  dimension_group: fecha_recibido {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_recibido ;;
  }
  dimension: id_usuario_accion {
    type: number
    sql: ${TABLE}.id_usuario_accion ;;
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
