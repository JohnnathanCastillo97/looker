view: maestra_grupo_tesoreria_corona {
  sql_table_name: bd_ic_cliente.Maestra_grupo_tesoreria_corona ;;
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
  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.Cod_cliente ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }
  dimension: description2 {
    type: string
    sql: ${TABLE}.Description2 ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: migadet {
    type: number
    sql: ${TABLE}.migadet ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
