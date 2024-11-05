view: catalogos_materiales_imagenes_oxxo {
  sql_table_name: bd_ic_cliente.catalogos_materiales_imagenes_oxxo ;;

  dimension: catalogo_material_id {
    type: number
    sql: ${TABLE}.catalogoMaterialId ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: string
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: imagen_id {
    type: number
    sql: ${TABLE}.imagenId ;;
  }
  measure: count {
    type: count
  }
}
