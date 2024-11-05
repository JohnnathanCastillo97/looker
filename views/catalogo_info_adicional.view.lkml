view: catalogo_info_adicional {
  sql_table_name: bd_ic_cliente.catalogo_info_adicional ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_catalogo {
    type: number
    sql: ${TABLE}.cod_catalogo ;;
  }
  dimension: dias_plazo_pago {
    type: number
    sql: ${TABLE}.DiasPlazoPago ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: grupo_compra {
    type: string
    sql: ${TABLE}.GrupoCompra ;;
  }
  dimension: id_negociador {
    type: number
    sql: ${TABLE}.id_negociador ;;
  }
  dimension: org_compras {
    type: string
    sql: ${TABLE}.OrgCompras ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
