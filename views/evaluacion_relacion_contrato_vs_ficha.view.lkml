view: evaluacion_relacion_contrato_vs_ficha {
  sql_table_name: bd_ic_cliente.evaluacion_relacion_contrato_vs_ficha ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contrato_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contrato_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: ficha_id {
    type: number
    sql: ${TABLE}.ficha_id ;;
  }
  dimension: padre_id {
    type: number
    sql: ${TABLE}.padre_id ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos.id, usuarios.username, usuarios.id]
  }
}
