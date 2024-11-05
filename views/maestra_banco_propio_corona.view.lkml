view: maestra_banco_propio_corona {
  sql_table_name: bd_ic_cliente.maestra_banco_propio_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: banco_propio {
    type: string
    sql: ${TABLE}.banco_propio ;;
  }
  dimension: codigo_banco {
    type: string
    sql: ${TABLE}.codigo_banco ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: migradet {
    type: number
    sql: ${TABLE}.migradet ;;
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
