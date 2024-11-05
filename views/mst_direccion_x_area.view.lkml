view: mst_direccion_x_area {
  sql_table_name: bd_ic_cliente.mst_direccion_x_area ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_area {
    type: number
    sql: ${TABLE}.id_area ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_direccion {
    type: number
    sql: ${TABLE}.id_direccion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
