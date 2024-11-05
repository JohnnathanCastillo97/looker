view: requisicion_otrosi {
  sql_table_name: bd_ic_cliente.requisicion_otrosi ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adicion {
    type: string
    sql: ${TABLE}.adicion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_requisicion {
    type: number
    sql: ${TABLE}.id_requisicion ;;
  }
  dimension: id_tipo_modificacion {
    type: number
    sql: ${TABLE}.id_tipo_modificacion ;;
  }
  dimension: modificacion_clausula {
    type: string
    sql: ${TABLE}.modificacion_clausula ;;
  }
  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
