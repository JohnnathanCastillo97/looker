view: solicitud_lista_proveedores_dian {
  sql_table_name: bd_ic_cliente.solicitud_lista_proveedores_dian ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: direccion_seccional {
    type: string
    sql: ${TABLE}.direccion_seccional ;;
  }
  dimension: fecha_1 {
    type: string
    sql: ${TABLE}.fecha_1 ;;
  }
  dimension: fecha_2 {
    type: string
    sql: ${TABLE}.fecha_2 ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: nombre_razon_social {
    type: string
    sql: ${TABLE}.nombre_razon_social ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: publicacion {
    type: string
    sql: ${TABLE}.publicacion ;;
  }
  dimension: resolucion {
    type: string
    sql: ${TABLE}.resolucion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
