view: ofertas_acciones {
  sql_table_name: bd_ic_cliente.ofertas_acciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: mostrar_presupuesto {
    type: string
    sql: ${TABLE}.mostrar_presupuesto ;;
  }
  dimension: notificacion_seguros {
    type: string
    sql: ${TABLE}.notificacion_seguros ;;
  }
  dimension: usuario {
    type: number
    sql: ${TABLE}.usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
