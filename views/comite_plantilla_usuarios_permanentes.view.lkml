view: comite_plantilla_usuarios_permanentes {
  sql_table_name: bd_ic_cliente.comite_plantilla_usuarios_permanentes ;;
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
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: tema_comite {
    type: string
    sql: ${TABLE}.tema_comite ;;
  }
  dimension: tipo_comite {
    type: string
    sql: ${TABLE}.tipo_comite ;;
  }
  dimension: tipo_usuario {
    type: number
    sql: ${TABLE}.tipo_usuario ;;
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
