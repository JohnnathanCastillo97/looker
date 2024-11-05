view: solicitud_posicion_cargue_detalle_odl {
  sql_table_name: bd_ic_cliente.solicitud_posicion_cargue_detalle_odl ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: almacen {
    type: string
    sql: ${TABLE}.Almacen ;;
  }
  dimension: cantidad_pendiente {
    type: number
    sql: ${TABLE}.CantidadPendiente ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }
  dimension: documento {
    type: number
    sql: ${TABLE}.Documento ;;
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
  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }
  dimension: posicion {
    type: number
    sql: ${TABLE}.Posicion ;;
  }
  dimension: precio {
    type: number
    sql: ${TABLE}.Precio ;;
  }
  dimension: resultado {
    type: string
    sql: ${TABLE}.resultado ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
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
