view: proveedor_impuestos_corona {
  sql_table_name: bd_ic_cliente.proveedor_impuestos_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: categoria_fiscal {
    type: string
    sql: ${TABLE}.categoria_fiscal ;;
  }
  dimension: categoria_fiscal_adicional {
    type: string
    sql: ${TABLE}.categoria_fiscal_adicional ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_pais_retencion {
    type: number
    sql: ${TABLE}.id_pais_retencion ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_region {
    type: number
    sql: ${TABLE}.id_region ;;
  }
  dimension: indicador_retencion {
    type: string
    sql: ${TABLE}.indicador_retencion ;;
  }
  dimension: sujeto {
    type: string
    sql: ${TABLE}.sujeto ;;
  }
  dimension: tipo_retencion {
    type: string
    sql: ${TABLE}.tipo_retencion ;;
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
