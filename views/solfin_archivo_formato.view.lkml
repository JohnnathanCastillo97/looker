view: solfin_archivo_formato {
  sql_table_name: bd_ic_cliente.solfin_archivo_formato ;;
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
  dimension: nom_formato {
    type: string
    sql: ${TABLE}.nom_formato ;;
  }
  dimension: url_formato {
    type: string
    sql: ${TABLE}.url_formato ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
