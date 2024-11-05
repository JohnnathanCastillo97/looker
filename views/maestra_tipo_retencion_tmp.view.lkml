view: maestra_tipo_retencion_tmp {
  sql_table_name: bd_ic_cliente.Maestra_tipo_retencion_tmp ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clave {
    type: string
    sql: ${TABLE}.Clave ;;
  }
  dimension: clave2 {
    type: string
    sql: ${TABLE}.Clave2 ;;
  }
  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.Cod_cliente ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
