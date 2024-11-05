view: oferta_adjudicaciones_atributos_adicionales {
  sql_table_name: bd_ic_cliente.oferta_adjudicaciones_atributos_adicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjudicacion_id {
    type: number
    sql: ${TABLE}.adjudicacion_id ;;
  }
  dimension: atributo_nombre {
    type: string
    sql: ${TABLE}.atributo_nombre ;;
  }
  dimension: atributo_valor {
    type: string
    sql: ${TABLE}.atributo_valor ;;
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
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
