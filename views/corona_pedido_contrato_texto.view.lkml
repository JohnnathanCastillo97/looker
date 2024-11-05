view: corona_pedido_contrato_texto {
  sql_table_name: bd_ic_cliente.corona_pedido_contrato_texto ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ebeln {
    type: string
    sql: ${TABLE}.Ebeln ;;
  }
  dimension: ebelp {
    type: string
    sql: ${TABLE}.Ebelp ;;
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
