view: tb_precalificacion_informacion_adicional_documentos {
  sql_table_name: bd_ic_cliente.tb_precalificacion_informacion_adicional_documentos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: archivo {
    type: string
    sql: ${TABLE}.archivo ;;
  }
  dimension: precalificacion_informacion_adicional_id {
    type: number
    sql: ${TABLE}.precalificacionInformacionAdicionalId ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
