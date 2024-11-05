view: contratos_anexos {
  sql_table_name: bd_ic_cliente.contratos_anexos ;;

  dimension: contratos_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contratos_id ;;
  }
  dimension: estado_anexos {
    type: string
    sql: ${TABLE}.estado_anexos ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension_group: fecha_vencimiento_anexos {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_vencimiento_anexos ;;
  }
  dimension: id_anexos {
    type: number
    sql: ${TABLE}.id_anexos ;;
  }
  dimension: observacion_anexos {
    type: string
    sql: ${TABLE}.observacion_anexos ;;
  }
  dimension: ruta_anexos {
    type: string
    sql: ${TABLE}.ruta_anexos ;;
  }
  dimension: tipo_anexos {
    type: string
    sql: ${TABLE}.tipo_anexos ;;
  }
  dimension: titulo_anexos {
    type: string
    sql: ${TABLE}.titulo_anexos ;;
  }
  dimension: usuarios_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuarios_id ;;
  }
  measure: count {
    type: count
    drill_fields: [usuarios.username, usuarios.id, contratos.id]
  }
}
