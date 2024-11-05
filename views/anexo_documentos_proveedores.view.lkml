view: anexo_documentos_proveedores {
  sql_table_name: bd_ic_cliente.anexo_documentos_proveedores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anexo_adicional_peps {
    type: string
    sql: ${TABLE}.anexo_adicional_peps ;;
  }
  dimension: anexo_fuva {
    type: string
    sql: ${TABLE}.anexo_fuva ;;
  }
  dimension: anexo_sagrilaf {
    type: string
    sql: ${TABLE}.anexo_sagrilaf ;;
  }
  dimension: anexo_uso_interno {
    type: string
    sql: ${TABLE}.anexo_uso_interno ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
