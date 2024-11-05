view: tb_precalificacion_filtros_busqueda {
  sql_table_name: bd_ic_cliente.tb_precalificacion_filtros_busqueda ;;
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
  dimension: precalificacion_id {
    type: number
    sql: ${TABLE}.precalificacionId ;;
  }
  dimension: tipo_busqueda_certificados {
    type: string
    sql: ${TABLE}.tipo_busqueda_certificados ;;
  }
  dimension: tipo_busqueda_proveedores {
    type: string
    sql: ${TABLE}.tipo_busqueda_proveedores ;;
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
