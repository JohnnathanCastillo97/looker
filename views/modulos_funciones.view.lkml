view: modulos_funciones {
  sql_table_name: bd_ic_cliente.modulos_funciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.estado ;;
  }
  dimension: id_modulo {
    type: number
    sql: ${TABLE}.id_modulo ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
