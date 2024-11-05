view: paa_ejercicio_consolidadores {
  sql_table_name: bd_ic_cliente.paa_ejercicio_consolidadores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aprobador {
    type: number
    sql: ${TABLE}.aprobador ;;
  }
  dimension: consolidador {
    type: string
    sql: ${TABLE}.consolidador ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_paa {
    type: number
    sql: ${TABLE}.id_paa ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
