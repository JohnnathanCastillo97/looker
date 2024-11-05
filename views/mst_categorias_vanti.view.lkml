view: mst_categorias_vanti {
  sql_table_name: bd_ic_cliente.mst_categorias_vanti ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividad {
    type: string
    sql: ${TABLE}.actividad ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
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
  dimension: familia {
    type: string
    sql: ${TABLE}.familia ;;
  }
  dimension: grupo_articulos {
    type: string
    sql: ${TABLE}.grupo_articulos ;;
  }
  dimension: tipo_evaluacion {
    type: string
    sql: ${TABLE}.tipo_evaluacion ;;
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
