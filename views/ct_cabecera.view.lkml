view: ct_cabecera {
  sql_table_name: bd_ic_cliente.ct_cabecera ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.anio ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cabecera {
    type: number
    sql: ${TABLE}.id_cabecera ;;
  }
  dimension: id_cia {
    type: number
    sql: ${TABLE}.idCia ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_tipo_cert {
    type: number
    sql: ${TABLE}.id_tipo_cert ;;
  }
  dimension: nit_prov {
    type: string
    sql: ${TABLE}.nit_prov ;;
  }
  dimension: pagador {
    type: string
    sql: ${TABLE}.pagador ;;
  }
  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }
  dimension: razon_soc {
    type: string
    sql: ${TABLE}.razon_soc ;;
  }
  dimension: tipo_prov {
    type: string
    sql: ${TABLE}.tipo_prov ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
  }
}
