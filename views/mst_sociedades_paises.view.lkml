view: mst_sociedades_paises {
  sql_table_name: bd_ic_cliente.mst_sociedades_paises ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cliente_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: pais_id {
    type: number
    sql: ${TABLE}.pais_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id]
  }
}
