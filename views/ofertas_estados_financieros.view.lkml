view: ofertas_estados_financieros {
  sql_table_name: bd_ic_cliente.ofertas_estados_financieros ;;

  dimension: activo_corriente {
    type: number
    sql: ${TABLE}.activo_corriente ;;
  }
  dimension: activo_total {
    type: number
    sql: ${TABLE}.activo_total ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: cod_oferta {
    type: number
    sql: ${TABLE}.cod_oferta ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_eeff {
    type: number
    sql: ${TABLE}.id_eeff ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: pasivo_corriente {
    type: string
    sql: ${TABLE}.pasivo_corriente ;;
  }
  dimension: pasivo_total {
    type: string
    sql: ${TABLE}.pasivo_total ;;
  }
  dimension: patrimonio {
    type: string
    sql: ${TABLE}.patrimonio ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: utilidades_operacionales {
    type: string
    sql: ${TABLE}.utilidades_operacionales ;;
  }
  dimension: utilidades_retenidas {
    type: string
    sql: ${TABLE}.utilidades_retenidas ;;
  }
  dimension: ventas_operacionales {
    type: string
    sql: ${TABLE}.ventas_operacionales ;;
  }
  measure: count {
    type: count
  }
}
