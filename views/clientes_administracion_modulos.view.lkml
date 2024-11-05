view: clientes_administracion_modulos {
  sql_table_name: bd_ic_cliente.clientes_administracion_modulos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: a_onclick {
    type: string
    sql: ${TABLE}.a_onclick ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: modulo {
    type: string
    sql: ${TABLE}.modulo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
