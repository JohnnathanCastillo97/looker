view: solfin_entrada_almacen {
  sql_table_name: bd_ic_cliente.solfin_entrada_almacen ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_proveedor_int {
    type: string
    sql: ${TABLE}.cod_proveedor_int ;;
  }
  dimension: docto_almacen {
    type: string
    sql: ${TABLE}.docto_almacen ;;
  }
  dimension: docto_referencia {
    type: string
    sql: ${TABLE}.docto_referencia ;;
  }
  dimension: docto_remesa {
    type: string
    sql: ${TABLE}.docto_remesa ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_almacen {
    type: string
    sql: ${TABLE}.estado_almacen ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: fecha_documento {
    type: string
    sql: ${TABLE}.fecha_documento ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_co {
    type: string
    sql: ${TABLE}.id_co ;;
  }
  dimension: nit_proveedor {
    type: string
    sql: ${TABLE}.nit_proveedor ;;
  }
  dimension: nom_proveedor {
    type: string
    sql: ${TABLE}.nom_proveedor ;;
  }
  dimension: nro_documento {
    type: string
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: reg_asociado {
    type: string
    sql: ${TABLE}.reg_asociado ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: valor_impuesto {
    type: string
    sql: ${TABLE}.valor_impuesto ;;
  }
  dimension: valor_neto {
    type: string
    sql: ${TABLE}.valor_neto ;;
  }
  dimension: valor_subtotal {
    type: string
    sql: ${TABLE}.valor_subtotal ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
