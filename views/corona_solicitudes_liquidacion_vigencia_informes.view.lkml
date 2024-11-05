view: corona_solicitudes_liquidacion_vigencia_informes {
  sql_table_name: bd_ic_cliente.corona_solicitudes_liquidacion_vigencia_informes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: meses_vigencia {
    type: number
    sql: ${TABLE}.meses_vigencia ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
