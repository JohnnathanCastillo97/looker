view: relacion_categoria_oferta_documento {
  sql_table_name: bd_ic_cliente.relacion_categoria_oferta_documento ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: id_item_oferta_documento {
    type: number
    sql: ${TABLE}.id_item_oferta_documento ;;
  }
  dimension: ids_categorias {
    type: string
    sql: ${TABLE}.ids_categorias ;;
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
