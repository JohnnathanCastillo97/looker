view: compras {
  sql_table_name: bd_ic_cliente.compras ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: grupo_compras_sap {
    type: string
    sql: ${TABLE}.grupo_compras_sap ;;
  }
  dimension: id_compra {
    type: number
    sql: ${TABLE}.id_compra ;;
  }
  dimension: id_solicitudes {
    type: string
    sql: ${TABLE}.id_solicitudes ;;
  }
  dimension: organizacion_compras_sap {
    type: string
    sql: ${TABLE}.organizacion_compras_sap ;;
  }
  dimension: sociedad_sap {
    type: string
    sql: ${TABLE}.sociedad_sap ;;
  }
  measure: count {
    type: count
  }
}
