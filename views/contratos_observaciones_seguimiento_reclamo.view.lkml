view: contratos_observaciones_seguimiento_reclamo {
  sql_table_name: bd_ic_cliente.contratos_observaciones_seguimiento_reclamo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contratos_reclamos_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contratos_reclamos_id ;;
  }
  dimension: descripcion_reclamo {
    type: string
    sql: ${TABLE}.descripcion_reclamo ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos_reclamos.id]
  }
}
