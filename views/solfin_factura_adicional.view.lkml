view: solfin_factura_adicional {
  sql_table_name: bd_ic_cliente.solfin_factura_adicional ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: centro_costo {
    type: string
    sql: ${TABLE}.centro_costo ;;
  }
  dimension: centro_costo_nomb {
    type: string
    sql: ${TABLE}.centro_costo_nomb ;;
  }
  dimension: centro_operacion {
    type: string
    sql: ${TABLE}.centro_operacion ;;
  }
  dimension: centro_operacion_nom {
    type: string
    sql: ${TABLE}.centro_operacion_nom ;;
  }
  dimension: centro_operacion_nom_rpd {
    type: string
    sql: ${TABLE}.centro_operacion_nom_rpd ;;
  }
  dimension: centro_operacion_nomb {
    type: string
    sql: ${TABLE}.centro_operacion_nomb ;;
  }
  dimension: centro_operacion_nomb_rpd {
    type: string
    sql: ${TABLE}.centro_operacion_nomb_rpd ;;
  }
  dimension: centro_operacion_rpd {
    type: string
    sql: ${TABLE}.centro_operacion_rpd ;;
  }
  dimension: comprador_italcol {
    type: string
    sql: ${TABLE}.comprador_italcol ;;
  }
  dimension: contacto_regional {
    type: string
    sql: ${TABLE}.contacto_regional ;;
  }
  dimension: estado_add {
    type: string
    sql: ${TABLE}.estado_add ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_centro_costo {
    type: string
    sql: ${TABLE}.id_centro_costo ;;
  }
  dimension: id_centro_operacion {
    type: number
    sql: ${TABLE}.id_centro_operacion ;;
  }
  dimension: id_centro_operacion_rpd {
    type: string
    sql: ${TABLE}.id_centro_operacion_rpd ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_entrada_mercancias {
    type: string
    sql: ${TABLE}.id_entrada_mercancias ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: id_partida_presupuestal {
    type: string
    sql: ${TABLE}.id_partida_presupuestal ;;
  }
  dimension: id_unidad_negocio {
    type: string
    sql: ${TABLE}.id_unidad_negocio ;;
  }
  dimension: lista_distribucion_url {
    type: string
    sql: ${TABLE}.lista_distribucion_url ;;
  }
  dimension: partida_presupuestal {
    type: string
    sql: ${TABLE}.partida_presupuestal ;;
  }
  dimension: partida_presupuestal_nomb {
    type: string
    sql: ${TABLE}.partida_presupuestal_nomb ;;
  }
  dimension: regional {
    type: string
    sql: ${TABLE}.regional ;;
  }
  dimension: solicitante_italcol {
    type: string
    sql: ${TABLE}.solicitante_italcol ;;
  }
  dimension: unidad_negocio {
    type: string
    sql: ${TABLE}.unidad_negocio ;;
  }
  dimension: unidad_negocio_nomb {
    type: string
    sql: ${TABLE}.unidad_negocio_nomb ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
