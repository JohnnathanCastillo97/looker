view: proveedor_solicitud_registro {
  sql_table_name: bd_ic_cliente.proveedor_solicitud_registro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividades {
    type: string
    sql: ${TABLE}.actividades ;;
  }
  dimension: compannias_selec {
    type: string
    sql: ${TABLE}.compannias_selec ;;
  }
  dimension: crear_en_sap {
    type: string
    sql: ${TABLE}.crear_en_sap ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_registro {
    type: string
    sql: ${TABLE}.estado_registro ;;
  }
  dimension_group: fecha_cierre {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_cierre ;;
  }
  dimension_group: fecha_solicitud {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_solicitud ;;
  }
  dimension: id_actividad {
    type: number
    sql: ${TABLE}.id_actividad ;;
  }
  dimension: id_bienes_servicios {
    type: string
    sql: ${TABLE}.id_bienes_servicios ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_grupos_compras {
    type: string
    sql: ${TABLE}.id_grupos_compras ;;
  }
  dimension: id_negociador_comprador {
    type: number
    sql: ${TABLE}.id_negociador_comprador ;;
  }
  dimension: id_profesional_ambiental {
    type: number
    sql: ${TABLE}.id_profesional_ambiental ;;
  }
  dimension: id_profesional_sst {
    type: number
    sql: ${TABLE}.id_profesional_sst ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_region {
    type: number
    sql: ${TABLE}.id_region ;;
  }
  dimension: id_usuario_solicita {
    type: number
    sql: ${TABLE}.id_usuario_solicita ;;
  }
  dimension: numero_solicitud {
    type: string
    sql: ${TABLE}.numero_solicitud ;;
  }
  dimension: numero_ticket {
    type: string
    sql: ${TABLE}.numero_ticket ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: observaciones_cancelado {
    type: string
    sql: ${TABLE}.observaciones_cancelado ;;
  }
  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }
  dimension: tipo_validacion_solicitada {
    type: string
    sql: ${TABLE}.tipo_validacion_solicitada ;;
  }
  dimension: validacion_suplos {
    type: string
    sql: ${TABLE}.validacion_suplos ;;
  }
  dimension: visita {
    type: string
    sql: ${TABLE}.visita ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
