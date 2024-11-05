view: clientes_administracion_modulos_cabecera {
  sql_table_name: bd_ic_cliente.clientes_administracion_modulos_cabecera ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cabecera {
    type: number
    sql: ${TABLE}.id_cabecera ;;
  }
  dimension: id_modulo {
    type: number
    sql: ${TABLE}.id_modulo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
