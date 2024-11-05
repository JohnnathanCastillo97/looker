view: solfin_agentes_configuracion_negocios {
  sql_table_name: bd_ic_cliente.solfin_agentes_configuracion_negocios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: banco {
    type: string
    sql: ${TABLE}.banco ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_agente {
    type: string
    sql: ${TABLE}.id_agente ;;
  }
  dimension: modalidad {
    type: string
    sql: ${TABLE}.modalidad ;;
  }
  dimension: numero_cuenta {
    type: string
    sql: ${TABLE}.numero_cuenta ;;
  }
  dimension: opc_autorizacion_pago {
    type: string
    sql: ${TABLE}.opc_autorizacion_pago ;;
  }
  dimension: opc_contabilizacion {
    type: string
    sql: ${TABLE}.opc_contabilizacion ;;
  }
  dimension: politica_pagos_tesoreria {
    type: string
    sql: ${TABLE}.politica_pagos_tesoreria ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_cuenta {
    type: string
    sql: ${TABLE}.tipo_cuenta ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  dimension: usuario_receptor_contabilidad {
    type: string
    sql: ${TABLE}.usuario_receptor_contabilidad ;;
  }
  dimension: usuario_receptor_pago {
    type: string
    sql: ${TABLE}.usuario_receptor_pago ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
