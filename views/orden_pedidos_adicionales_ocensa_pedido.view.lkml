view: orden_pedidos_adicionales_ocensa_pedido {
  sql_table_name: bd_ic_cliente.orden_pedidos_adicionales_ocensa_pedido ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cab_condiciones {
    type: string
    sql: ${TABLE}.cab_condiciones ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: email_proveedor {
    type: string
    sql: ${TABLE}.email_proveedor ;;
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
  dimension: id_clase_proceso {
    type: number
    sql: ${TABLE}.id_clase_proceso ;;
  }
  dimension: id_cond_pago {
    type: number
    sql: ${TABLE}.id_cond_pago ;;
  }
  dimension: id_incoterm {
    type: number
    sql: ${TABLE}.id_incoterm ;;
  }
  dimension: id_orden_pedido {
    type: number
    sql: ${TABLE}.id_orden_pedido ;;
  }
  dimension: lugar_ejecucion {
    type: string
    sql: ${TABLE}.lugar_ejecucion ;;
  }
  dimension: nombre_proveedor {
    type: string
    sql: ${TABLE}.nombre_proveedor ;;
  }
  dimension: telefono_proveedor {
    type: string
    sql: ${TABLE}.telefono_proveedor ;;
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
