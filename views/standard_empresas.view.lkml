view: standard_empresas {
  sql_table_name: bd_ic_cliente.standard_empresas ;;
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
  dimension: nombre_empresa {
    type: string
    sql: ${TABLE}.nombre_empresa ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
