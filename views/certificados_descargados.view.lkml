view: certificados_descargados {
  sql_table_name: bd_ic_cliente.certificados_descargados ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anio {
    type: string
    sql: ${TABLE}.anio ;;
  }
  dimension_group: fecha_descarga {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_descarga ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }
  dimension: tipo_certificado {
    type: string
    sql: ${TABLE}.tipo_certificado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
