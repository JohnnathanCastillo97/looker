view: orden_pedidos_adicionales_ocensa_contrato {
  sql_table_name: bd_ic_cliente.orden_pedidos_adicionales_ocensa_contrato ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cab_contrato {
    type: string
    sql: ${TABLE}.cab_contrato ;;
  }
  dimension: cab_oferta {
    type: string
    sql: ${TABLE}.cab_oferta ;;
  }
  dimension: condiciones_negociacion {
    type: string
    sql: ${TABLE}.condiciones_negociacion ;;
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
  dimension_group: fecha_inicio_validez {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio_validez ;;
  }
  dimension_group: fecha_oferta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_oferta ;;
  }
  dimension: id_activ_industrial {
    type: number
    sql: ${TABLE}.id_activ_industrial ;;
  }
  dimension: id_administrador {
    type: number
    sql: ${TABLE}.id_administrador ;;
  }
  dimension: id_anticipo {
    type: number
    sql: ${TABLE}.id_anticipo ;;
  }
  dimension: id_clase_contrato {
    type: number
    sql: ${TABLE}.id_clase_contrato ;;
  }
  dimension: id_clase_proceso {
    type: number
    sql: ${TABLE}.id_clase_proceso ;;
  }
  dimension: id_cond_pago {
    type: number
    sql: ${TABLE}.id_cond_pago ;;
  }
  dimension: id_grupo_compras {
    type: number
    sql: ${TABLE}.id_grupo_compras ;;
  }
  dimension: id_incoterm {
    type: number
    sql: ${TABLE}.id_incoterm ;;
  }
  dimension: id_incremento_anual_ipc {
    type: number
    sql: ${TABLE}.id_incremento_anual_ipc ;;
  }
  dimension: id_mano_obra {
    type: number
    sql: ${TABLE}.id_mano_obra ;;
  }
  dimension: id_obra_civil {
    type: number
    sql: ${TABLE}.id_obra_civil ;;
  }
  dimension: id_orden_pedido {
    type: number
    sql: ${TABLE}.id_orden_pedido ;;
  }
  dimension: id_prorroga {
    type: number
    sql: ${TABLE}.id_prorroga ;;
  }
  dimension: id_tipo_contrato {
    type: number
    sql: ${TABLE}.id_tipo_contrato ;;
  }
  dimension: id_tipo_plazo_ejecucion {
    type: number
    sql: ${TABLE}.id_tipo_plazo_ejecucion ;;
  }
  dimension: id_tipo_plazo_liquidacion {
    type: number
    sql: ${TABLE}.id_tipo_plazo_liquidacion ;;
  }
  dimension: nota_cabecera {
    type: string
    sql: ${TABLE}.nota_cabecera ;;
  }
  dimension: plazo_ejecucion {
    type: number
    sql: ${TABLE}.plazo_ejecucion ;;
  }
  dimension: plazo_liquidacion {
    type: number
    sql: ${TABLE}.plazo_liquidacion ;;
  }
  dimension: sociedad {
    type: number
    sql: ${TABLE}.sociedad ;;
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
