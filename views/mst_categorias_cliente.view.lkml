view: mst_categorias_cliente {
  sql_table_name: bd_ic_cliente.mst_categorias_cliente ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: cod_familia {
    type: number
    sql: ${TABLE}.cod_familia ;;
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
    drill_fields: [id]
  }
}
