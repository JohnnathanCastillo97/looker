view: precalificacion_financiera {
  sql_table_name: bd_ic_cliente.precalificacion_financiera ;;

  dimension: activo_corriente {
    type: number
    sql: ${TABLE}.activo_corriente ;;
  }
  dimension: activo_total {
    type: number
    sql: ${TABLE}.activo_total ;;
  }
  dimension_group: anio_eeff {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.anio_eeff ;;
  }
  dimension: cliente {
    type: number
    sql: ${TABLE}.cliente ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_pre_financiera {
    type: number
    sql: ${TABLE}.id_pre_financiera ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: pasivo_corriente {
    type: number
    sql: ${TABLE}.pasivo_corriente ;;
  }
  dimension: pasivo_total {
    type: number
    sql: ${TABLE}.pasivo_total ;;
  }
  dimension: patrimonio {
    type: number
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
  dimension: utilidad_acumulada {
    type: number
    sql: ${TABLE}.utilidad_acumulada ;;
  }
  dimension: utilidad_operacional {
    type: number
    sql: ${TABLE}.utilidad_operacional ;;
  }
  dimension: ventas {
    type: number
    sql: ${TABLE}.ventas ;;
  }
  measure: count {
    type: count
  }
}
