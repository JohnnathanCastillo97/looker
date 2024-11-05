view: aoc_tipo_super {
  sql_table_name: bd_ic_cliente.aoc_tipo_super ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_aoc {
    type: number
    sql: ${TABLE}.id_aoc ;;
  }
  dimension: id_supervision {
    type: number
    sql: ${TABLE}.id_supervision ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
