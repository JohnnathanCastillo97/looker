view: materiales_imagenes_postobon {
  sql_table_name: bd_ic_cliente.materiales_imagenes_postobon ;;

  dimension: cod_imagen {
    type: number
    sql: ${TABLE}.cod_imagen ;;
  }
  dimension: cod_material_catalogo {
    type: number
    sql: ${TABLE}.cod_material_catalogo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
  }
}