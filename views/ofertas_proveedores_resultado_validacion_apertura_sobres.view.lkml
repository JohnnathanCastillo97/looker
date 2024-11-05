view: ofertas_proveedores_resultado_validacion_apertura_sobres {
  sql_table_name: bd_ic_cliente.ofertas_proveedores_resultado_validacion_apertura_sobres ;;
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
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_usuario_aprobador {
    type: number
    sql: ${TABLE}.id_usuario_aprobador ;;
  }
  dimension: id_validacion_apertura_sobre {
    type: number
    sql: ${TABLE}.id_validacion_apertura_sobre ;;
  }
  dimension: sobre {
    type: string
    sql: ${TABLE}.sobre ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: validacion {
    type: string
    sql: ${TABLE}.validacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
