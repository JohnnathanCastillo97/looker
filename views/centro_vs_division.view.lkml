view: centro_vs_division {
  sql_table_name: bd_ic_cliente.centro_vs_division ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_posiciones {
    type: number
    sql: ${TABLE}.cantidad_posiciones ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }
  dimension: centro2 {
    type: string
    sql: ${TABLE}.centro2 ;;
  }
  dimension: division_negocio {
    type: string
    sql: ${TABLE}.division_negocio ;;
  }
  dimension: org_compras {
    type: string
    sql: ${TABLE}.orgCompras ;;
  }
  dimension: org_compras2 {
    type: string
    sql: ${TABLE}.orgCompras2 ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
