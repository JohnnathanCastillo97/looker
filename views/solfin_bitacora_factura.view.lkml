view: solfin_bitacora_factura {
  sql_table_name: bd_ic_cliente.solfin_bitacora_factura ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion_bitacora {
    type: string
    sql: ${TABLE}.accion_bitacora ;;
  }
  dimension: dirigido_bitacora {
    type: string
    sql: ${TABLE}.dirigido_bitacora ;;
  }
  dimension: estado_factura {
    type: string
    sql: ${TABLE}.estado_factura ;;
  }
  dimension: fecha_bitacora {
    type: string
    sql: ${TABLE}.fecha_bitacora ;;
  }
  dimension: icono_bitacora {
    type: string
    sql: ${TABLE}.icono_bitacora ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: nom_fecha_bitacora {
    type: string
    sql: ${TABLE}.nom_fecha_bitacora ;;
  }
  dimension: nom_usuario_bitacora {
    type: string
    sql: ${TABLE}.nom_usuario_bitacora ;;
  }
  dimension: observacion_bitacora {
    type: string
    sql: ${TABLE}.observacion_bitacora ;;
  }
  dimension: usuario_bitacora {
    type: string
    sql: ${TABLE}.usuario_bitacora ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
