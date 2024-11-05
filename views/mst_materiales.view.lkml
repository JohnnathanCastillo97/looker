view: mst_materiales {
  sql_table_name: bd_ic_cliente.mst_materiales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_familia {
    type: number
    sql: ${TABLE}.cod_familia ;;
  }
  dimension: cod_familia_intelcost {
    type: number
    sql: ${TABLE}.cod_familia_intelcost ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: descripcion_corta {
    type: string
    sql: ${TABLE}.descripcion_corta ;;
  }
  dimension: descripcion_larga {
    type: string
    sql: ${TABLE}.descripcion_larga ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }
  dimension: numero {
    type: string
    sql: ${TABLE}.numero ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
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
