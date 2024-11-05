view: solfin_factura_soportes_italcol {
  sql_table_name: bd_ic_cliente.solfin_factura_soportes_italcol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: base_64_pdf {
    type: string
    sql: ${TABLE}.base_64_pdf ;;
  }
  dimension: estado_soporte {
    type: string
    sql: ${TABLE}.estado_soporte ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
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
  dimension: id_factura {
    type: string
    sql: ${TABLE}.id_factura ;;
  }
  dimension: id_oc {
    type: string
    sql: ${TABLE}.id_oc ;;
  }
  dimension: nom_doct {
    type: string
    sql: ${TABLE}.nom_doct ;;
  }
  dimension: num_gr {
    type: string
    sql: ${TABLE}.num_gr ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: oc_not_rel {
    type: string
    sql: ${TABLE}.oc_not_rel ;;
  }
  dimension: origen_soporte {
    type: string
    sql: ${TABLE}.origen_soporte ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  dimension: usuario_modificacion {
    type: string
    sql: ${TABLE}.usuario_modificacion ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
