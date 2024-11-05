view: proveedor_grupo_cuentas_corona {
  sql_table_name: bd_ic_cliente.proveedor_grupo_cuentas_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actualizacion_cuenta_bancaria {
    type: string
    sql: ${TABLE}.actualizacion_cuenta_bancaria ;;
  }
  dimension: categoria_fiscal {
    type: string
    sql: ${TABLE}.categoria_fiscal ;;
  }
  dimension: categoria_fiscal_mst {
    type: number
    sql: ${TABLE}.categoria_fiscal_mst ;;
  }
  dimension: certificado_cecap {
    type: string
    sql: ${TABLE}.certificado_cecap ;;
  }
  dimension: cuenta_asociada {
    type: string
    sql: ${TABLE}.cuenta_asociada ;;
  }
  dimension: cuenta_asociada_mst {
    type: number
    sql: ${TABLE}.cuenta_asociada_mst ;;
  }
  dimension_group: fecha_modifica {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modifica ;;
  }
  dimension_group: fecha_registra {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registra ;;
  }
  dimension: grupo_cuentas {
    type: string
    sql: ${TABLE}.grupo_cuentas ;;
  }
  dimension: grupo_cuentas_mst {
    type: number
    sql: ${TABLE}.grupo_cuentas_mst ;;
  }
  dimension: grupo_tesoreria {
    type: string
    sql: ${TABLE}.grupo_tesoreria ;;
  }
  dimension: grupo_tesoreria_mst {
    type: number
    sql: ${TABLE}.grupo_tesoreria_mst ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_region {
    type: number
    sql: ${TABLE}.id_region ;;
  }
  dimension: id_region_cliente {
    type: number
    sql: ${TABLE}.id_region_cliente ;;
  }
  dimension: migradet {
    type: number
    sql: ${TABLE}.migradet ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: usuario_modifica {
    type: number
    sql: ${TABLE}.usuario_modifica ;;
  }
  dimension: usuario_registra {
    type: number
    sql: ${TABLE}.usuario_registra ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
