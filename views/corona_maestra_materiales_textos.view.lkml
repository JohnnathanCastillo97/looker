view: corona_maestra_materiales_textos {
  sql_table_name: bd_ic_cliente.corona_maestra_materiales_textos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: line {
    type: string
    sql: ${TABLE}.Line ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: migradet {
    type: number
    sql: ${TABLE}.migradet ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: t_did {
    type: string
    sql: ${TABLE}.T_did ;;
  }
  dimension: td_line {
    type: string
    sql: ${TABLE}.Td_line ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
