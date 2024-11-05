view: riesgo_cumplimiento_ciudad_proveedor {
  sql_table_name: bd_ic_cliente.riesgo_cumplimiento_ciudad_proveedor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_ciudad {
    type: number
    sql: ${TABLE}.cod_ciudad ;;
  }
  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }
  dimension: nivel_riesgo {
    type: string
    sql: ${TABLE}.nivel_riesgo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
