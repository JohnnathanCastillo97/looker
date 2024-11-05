view: solicitud_servicio_cargue_detalle_odl {
  sql_table_name: bd_ic_cliente.solicitud_servicio_cargue_detalle_odl ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
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
  dimension: fila_documento {
    type: number
    sql: ${TABLE}.fila_documento ;;
  }
  dimension: id_solicitud_posicion_cargue {
    type: number
    sql: ${TABLE}.id_solicitud_posicion_cargue ;;
  }
  dimension: id_solicitud_posicion_cargue_detalle_odl {
    type: number
    sql: ${TABLE}.id_solicitud_posicion_cargue_detalle_odl ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }
  dimension: num_linea {
    type: number
    sql: ${TABLE}.NumLinea ;;
  }
  dimension: precio {
    type: number
    sql: ${TABLE}.Precio ;;
  }
  dimension: resultado {
    type: string
    sql: ${TABLE}.resultado ;;
  }
  dimension: texto_breve {
    type: string
    sql: ${TABLE}.TextoBreve ;;
  }
  dimension: unidad {
    type: string
    sql: ${TABLE}.Unidad ;;
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
