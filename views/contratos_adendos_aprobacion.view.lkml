view: contratos_adendos_aprobacion {
  sql_table_name: bd_ic_cliente.contratos_adendos_aprobacion ;;
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
  dimension: estado_aprobacion {
    type: string
    sql: ${TABLE}.estado_aprobacion ;;
  }
  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_contrato_adendo {
    type: number
    sql: ${TABLE}.id_contrato_adendo ;;
  }
  dimension: ruta_archivo {
    type: string
    sql: ${TABLE}.ruta_archivo ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
