view: mst_listado_chequeo_visitas {
  sql_table_name: bd_ic_cliente.mst_listado_chequeo_visitas ;;
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
  dimension: id_sistema_gestion {
    type: number
    sql: ${TABLE}.id_sistema_gestion ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: requisito {
    type: string
    sql: ${TABLE}.requisito ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
