view: maestra_condicion_pago_companias_no_integradas_corona {
  sql_table_name: bd_ic_cliente.Maestra_condicion_pago_companias_no_integradas_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clave {
    type: string
    sql: ${TABLE}.clave ;;
  }
  dimension: cod_cliente {
    type: string
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
