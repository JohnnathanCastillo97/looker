view: solfin_eventos_radian {
  sql_table_name: bd_ic_cliente.solfin_eventos_radian ;;
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
  dimension: estado_descuento {
    type: string
    sql: ${TABLE}.estado_descuento ;;
  }
  dimension: estado_dian {
    type: string
    sql: ${TABLE}.estado_dian ;;
  }
  dimension: estado_factura {
    type: string
    sql: ${TABLE}.estado_factura ;;
  }
  dimension: evento_dian {
    type: string
    sql: ${TABLE}.evento_dian ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: fecha_creacion {
    type: string
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: fecha_envio_dian {
    type: string
    sql: ${TABLE}.fecha_envio_dian ;;
  }
  dimension: fecha_estado_factura {
    type: string
    sql: ${TABLE}.fecha_estado_factura ;;
  }
  dimension: fecha_respuesta_dian {
    type: string
    sql: ${TABLE}.fecha_respuesta_dian ;;
  }
  dimension: id_dian_factura {
    type: number
    sql: ${TABLE}.id_dian_factura ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: numero_eventos_reenviar {
    type: number
    sql: ${TABLE}.numero_eventos_reenviar ;;
  }
  dimension: numero_reenvios_dian {
    type: number
    sql: ${TABLE}.numero_reenvios_dian ;;
  }
  dimension: numero_reenvios_dian_permitidos {
    type: number
    sql: ${TABLE}.numero_reenvios_dian_permitidos ;;
  }
  dimension: respuesta_dian {
    type: string
    sql: ${TABLE}.respuesta_dian ;;
  }
  dimension: tipo_operacion {
    type: number
    sql: ${TABLE}.tipo_operacion ;;
  }
  dimension: titulo_respuesta_dian {
    type: string
    sql: ${TABLE}.titulo_respuesta_dian ;;
  }
  dimension: usuario_creador {
    type: string
    sql: ${TABLE}.usuario_creador ;;
  }
  dimension: xml_base_64 {
    type: string
    sql: ${TABLE}.xml_base_64 ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
