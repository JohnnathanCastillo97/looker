view: vistas_comunicados {
  sql_table_name: bd_ic_cliente.vistas_comunicados ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_vista {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_vista ;;
  }
  dimension: id_comunicado {
    type: string
    sql: ${TABLE}.idComunicado ;;
  }
  dimension: id_proveedor {
    type: string
    sql: ${TABLE}.idProveedor ;;
  }
  dimension: razon_proveedor {
    type: string
    sql: ${TABLE}.razon_proveedor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
