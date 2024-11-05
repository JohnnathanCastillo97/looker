view: solicitud_listas_partidos_politicos {
  sql_table_name: bd_ic_cliente.solicitud_listas_partidos_politicos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }
  dimension: correo {
    type: string
    sql: ${TABLE}.correo ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: partido_movimiento {
    type: string
    sql: ${TABLE}.partidoMovimiento ;;
  }
  dimension: representante_legal {
    type: string
    sql: ${TABLE}.representanteLegal ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
