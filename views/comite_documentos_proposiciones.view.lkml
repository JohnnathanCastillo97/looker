view: comite_documentos_proposiciones {
  sql_table_name: bd_ic_cliente.comite_documentos_proposiciones ;;
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
  dimension: id_proposicion {
    type: number
    sql: ${TABLE}.id_proposicion ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
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