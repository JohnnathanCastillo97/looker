view: solfin_unidad_negocio {
  sql_table_name: bd_ic_cliente.solfin_unidad_negocio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo_un {
    type: string
    sql: ${TABLE}.codigo_un ;;
  }
  dimension: companya_un {
    type: string
    sql: ${TABLE}.companya_un ;;
  }
  dimension: descripcion_un {
    type: string
    sql: ${TABLE}.descripcion_un ;;
  }
  dimension: estado_un {
    type: string
    sql: ${TABLE}.estado_un ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
