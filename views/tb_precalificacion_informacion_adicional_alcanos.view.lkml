view: tb_precalificacion_informacion_adicional_alcanos {
  sql_table_name: bd_ic_cliente.tb_precalificacion_informacion_adicional_alcanos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: area_solicitante {
    type: string
    sql: ${TABLE}.areaSolicitante ;;
  }
  dimension: centro_operacion {
    type: string
    sql: ${TABLE}.centroOperacion ;;
  }
  dimension: comprador_solicitud {
    type: string
    sql: ${TABLE}.compradorSolicitud ;;
  }
  dimension: modalidad_seleccion_compra {
    type: string
    sql: ${TABLE}.modalidadSeleccionCompra ;;
  }
  dimension: numero_solicitud_compra {
    type: string
    sql: ${TABLE}.numeroSolicitudCompra ;;
  }
  dimension: precalificacion_id {
    type: number
    sql: ${TABLE}.precalificacionId ;;
  }
  dimension: solicitante {
    type: string
    sql: ${TABLE}.solicitante ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
