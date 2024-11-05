view: plantillas {
  sql_table_name: bd_ic_cliente.plantillas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descipcion {
    type: string
    sql: ${TABLE}.descipcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ofertas_cuadro_economico_proveedor.count]
  }
}
