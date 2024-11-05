view: productos_2019_05_16 {
  sql_table_name: bd_ic_cliente.productos_2019_05_16 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_categoria_cli {
    type: number
    sql: ${TABLE}.cod_categoria_cli ;;
  }
  dimension: cod_categoria_ic {
    type: number
    sql: ${TABLE}.cod_categoria_ic ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_medida {
    type: number
    sql: ${TABLE}.cod_medida ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: decripcion_corta {
    type: string
    sql: ${TABLE}.decripcion_corta ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: descripcion_larga {
    type: string
    sql: ${TABLE}.descripcion_larga ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: origen_cliente {
    type: string
    sql: ${TABLE}.origen_cliente ;;
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
