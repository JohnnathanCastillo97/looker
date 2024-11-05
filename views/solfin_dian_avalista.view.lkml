view: solfin_dian_avalista {
  sql_table_name: bd_ic_cliente.solfin_dian_avalista ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cargo_avalista {
    type: string
    sql: ${TABLE}.cargo_avalista ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_dian_factura {
    type: number
    sql: ${TABLE}.id_dian_factura ;;
  }
  dimension: identificacion {
    type: string
    sql: ${TABLE}.identificacion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: nombre_avalista {
    type: string
    sql: ${TABLE}.nombre_avalista ;;
  }
  dimension: nota_aval {
    type: string
    sql: ${TABLE}.nota_aval ;;
  }
  dimension: numero {
    type: string
    sql: ${TABLE}.numero ;;
  }
  dimension: numero_id_avalista {
    type: string
    sql: ${TABLE}.numero_id_avalista ;;
  }
  dimension: participacion_moneda {
    type: string
    sql: ${TABLE}.participacion_moneda ;;
  }
  dimension: participacion_valor {
    type: string
    sql: ${TABLE}.participacion_valor ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: tipo_id_avalista {
    type: string
    sql: ${TABLE}.tipo_id_avalista ;;
  }
  dimension: valor_aval {
    type: string
    sql: ${TABLE}.valor_aval ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
