view: corona_solped_texto {
  sql_table_name: bd_ic_cliente.corona_solped_texto ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: banfn {
    type: string
    sql: ${TABLE}.Banfn ;;
  }
  dimension: banfpo {
    type: string
    sql: ${TABLE}.Banfpo ;;
  }
  dimension: line {
    type: string
    sql: ${TABLE}.Line ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: tdid {
    type: string
    sql: ${TABLE}.Tdid ;;
  }
  dimension: tdline {
    type: string
    sql: ${TABLE}.Tdline ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
