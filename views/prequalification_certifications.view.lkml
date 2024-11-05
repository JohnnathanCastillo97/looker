view: prequalification_certifications {
  sql_table_name: bd_ic_cliente.prequalification_certifications ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_certificado {
    type: number
    sql: ${TABLE}.cod_certificado ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
