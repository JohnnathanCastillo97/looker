view: paa_linea_distribucion_analisis {
  sql_table_name: bd_ic_cliente.paa_linea_distribucion_analisis ;;
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
  dimension: id_categoria {
    type: number
    sql: ${TABLE}.id_categoria ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_comprador {
    type: number
    sql: ${TABLE}.id_comprador ;;
  }
  dimension: id_direccion {
    type: number
    sql: ${TABLE}.id_direccion ;;
  }
  dimension: id_supervisor {
    type: number
    sql: ${TABLE}.id_supervisor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
