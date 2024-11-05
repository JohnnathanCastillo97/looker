view: solfin_agentes_documentos_alta {
  sql_table_name: bd_ic_cliente.solfin_agentes_documentos_alta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_agente {
    type: string
    sql: ${TABLE}.id_agente ;;
  }
  dimension: titulo_archivo {
    type: string
    sql: ${TABLE}.titulo_archivo ;;
  }
  dimension: url_archivo {
    type: string
    sql: ${TABLE}.url_archivo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
