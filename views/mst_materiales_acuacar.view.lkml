view: mst_materiales_acuacar {
  sql_table_name: bd_ic_cliente.mst_materiales_acuacar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_mat {
    type: string
    sql: ${TABLE}.cod_mat ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.unidad_medida ;;
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
