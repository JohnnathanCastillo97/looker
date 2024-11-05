view: contratos_documentos_revision {
  sql_table_name: bd_ic_cliente.contratos_documentos_revision ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
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
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: revision {
    type: string
    sql: ${TABLE}.revision ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
