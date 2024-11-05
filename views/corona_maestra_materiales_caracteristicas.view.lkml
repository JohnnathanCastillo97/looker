view: corona_maestra_materiales_caracteristicas {
  sql_table_name: bd_ic_cliente.corona_maestra_materiales_caracteristicas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: atinn {
    type: string
    sql: ${TABLE}.Atinn ;;
  }
  dimension: atwrt {
    type: string
    sql: ${TABLE}.Atwrt ;;
  }
  dimension: atzhl {
    type: string
    sql: ${TABLE}.Atzhl ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: integracion {
    type: string
    sql: ${TABLE}.integracion ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
