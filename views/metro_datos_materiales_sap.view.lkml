view: metro_datos_materiales_sap {
  sql_table_name: bd_ic_cliente.metro_datos_materiales_sap ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bloqueado {
    type: string
    sql: ${TABLE}.Bloqueado ;;
  }
  dimension: borrado {
    type: string
    sql: ${TABLE}.Borrado ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }
  dimension: familia {
    type: number
    sql: ${TABLE}.Familia ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }
  dimension: text_compras {
    type: string
    sql: ${TABLE}.TextCompras ;;
  }
  dimension: unidad {
    type: string
    sql: ${TABLE}.Unidad ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
