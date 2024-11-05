view: contratos_seguimiento {
  sql_table_name: bd_ic_cliente.contratos_seguimiento ;;

  dimension: avance_fisico {
    type: number
    sql: ${TABLE}.avance_fisico ;;
  }
  dimension: contratos_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contratos_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension_group: fecha_seguimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_seguimiento ;;
  }
  dimension: id_contratos_seguimiento {
    type: number
    sql: ${TABLE}.id_contratos_seguimiento ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: ruta_acta_segumiento {
    type: string
    sql: ${TABLE}.ruta_acta_segumiento ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuarios_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuarios_id ;;
  }
  measure: count {
    type: count
    drill_fields: [contratos.id, usuarios.username, usuarios.id]
  }
}
