view: solfin_dian_mandato {
  sql_table_name: bd_ic_cliente.solfin_dian_mandato ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cargo_mandato {
    type: string
    sql: ${TABLE}.cargo_mandato ;;
  }
  dimension: consecutivo {
    type: string
    sql: ${TABLE}.consecutivo ;;
  }
  dimension: correo {
    type: string
    sql: ${TABLE}.correo ;;
  }
  dimension: fecha_efectiva {
    type: string
    sql: ${TABLE}.fecha_efectiva ;;
  }
  dimension: fecha_inicio {
    type: string
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: fecha_terminacion {
    type: string
    sql: ${TABLE}.fecha_terminacion ;;
  }
  dimension: id_dian_factura {
    type: number
    sql: ${TABLE}.id_dian_factura ;;
  }
  dimension: identificacion {
    type: string
    sql: ${TABLE}.identificacion ;;
  }
  dimension: nombre_mandato {
    type: string
    sql: ${TABLE}.nombre_mandato ;;
  }
  dimension: nombre_usuario {
    type: string
    sql: ${TABLE}.nombre_usuario ;;
  }
  dimension: nota_mandato {
    type: string
    sql: ${TABLE}.nota_mandato ;;
  }
  dimension: numero_id_mandato {
    type: string
    sql: ${TABLE}.numero_id_mandato ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: referencia {
    type: string
    sql: ${TABLE}.referencia ;;
  }
  dimension: tipo_id_mandato {
    type: string
    sql: ${TABLE}.tipo_id_mandato ;;
  }
  dimension: tipo_mandate {
    type: string
    sql: ${TABLE}.tipo_mandate ;;
  }
  dimension: tipo_mandato {
    type: string
    sql: ${TABLE}.tipo_mandato ;;
  }
  dimension: tipo_operacion {
    type: number
    sql: ${TABLE}.tipo_operacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
