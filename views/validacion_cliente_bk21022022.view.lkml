view: validacion_cliente_bk21022022 {
  sql_table_name: bd_ic_cliente.validacion_cliente_bk21022022 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: certificado {
    type: string
    sql: ${TABLE}.certificado ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_cenit {
    type: string
    sql: ${TABLE}.estado_cenit ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: fecha_modificacion {
    type: string
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: notificacion {
    type: string
    sql: ${TABLE}.notificacion ;;
  }
  dimension: subestado {
    type: string
    sql: ${TABLE}.subestado ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: url_origen {
    type: string
    sql: ${TABLE}.url_origen ;;
  }
  dimension: usuario_modificacion {
    type: number
    sql: ${TABLE}.usuario_modificacion ;;
  }
  dimension_group: valido_desde {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.valido_desde ;;
  }
  dimension_group: valido_hasta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.valido_hasta ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
