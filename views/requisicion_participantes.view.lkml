view: requisicion_participantes {
  sql_table_name: bd_ic_cliente.requisicion_participantes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contacto_id {
    type: number
    sql: ${TABLE}.contacto_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedor_id ;;
  }
  dimension: requisicion_id {
    type: number
    sql: ${TABLE}.requisicion_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
