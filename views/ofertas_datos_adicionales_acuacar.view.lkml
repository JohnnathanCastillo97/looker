view: ofertas_datos_adicionales_acuacar {
  sql_table_name: bd_ic_cliente.ofertas_datos_adicionales_acuacar ;;
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
  dimension: id_direccion {
    type: number
    sql: ${TABLE}.id_direccion ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: presupuesto_vigencia {
    type: number
    sql: ${TABLE}.presupuesto_vigencia ;;
  }
  dimension: smmlv {
    type: number
    sql: ${TABLE}.smmlv ;;
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
