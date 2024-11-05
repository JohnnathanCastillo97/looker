view: catalogos_contactos_prov {
  sql_table_name: bd_ic_cliente.catalogos_contactos_prov ;;

  dimension: catalogo {
    type: number
    sql: ${TABLE}.catalogo ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: count {
    type: count
  }
}
