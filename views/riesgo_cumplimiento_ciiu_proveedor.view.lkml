view: riesgo_cumplimiento_ciiu_proveedor {
  sql_table_name: bd_ic_cliente.riesgo_cumplimiento_ciiu_proveedor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo_ciiu {
    type: number
    sql: ${TABLE}.codigo_ciiu ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
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
