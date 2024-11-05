view: cupon {
  sql_table_name: bd_ic_cliente.cupon ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cupon {
    type: string
    sql: ${TABLE}.cupon ;;
  }
  dimension: descuento {
    type: number
    sql: ${TABLE}.descuento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
