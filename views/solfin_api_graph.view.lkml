view: solfin_api_graph {
  sql_table_name: bd_ic_cliente.solfin_api_graph ;;
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
  dimension: id_api_graph {
    type: string
    sql: ${TABLE}.id_api_graph ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: proveedor {
    type: string
    sql: ${TABLE}.Proveedor ;;
  }
  dimension: secret_api_graph {
    type: string
    sql: ${TABLE}.secret_api_graph ;;
  }
  dimension: tenan_api_graph {
    type: string
    sql: ${TABLE}.tenan_api_graph ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
