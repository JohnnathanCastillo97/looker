view: maestra_estados_seguimiento_corona {
  sql_table_name: bd_ic_cliente.Maestra_estados_seguimiento_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }
  dimension: estado_suplos {
    type: string
    sql: ${TABLE}.estado_suplos ;;
  }
  dimension: id_estado {
    type: string
    sql: ${TABLE}.id_estado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
