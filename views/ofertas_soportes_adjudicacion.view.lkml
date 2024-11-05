view: ofertas_soportes_adjudicacion {
  sql_table_name: bd_ic_cliente.ofertas_soportes_adjudicacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: acta {
    type: string
    sql: ${TABLE}.acta ;;
  }
  dimension: adjudicacion_id {
    type: number
    sql: ${TABLE}.adjudicacion_id ;;
  }
  dimension: aprobacion_id {
    type: number
    sql: ${TABLE}.aprobacion_id ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: numero_acta {
    type: string
    sql: ${TABLE}.numero_acta ;;
  }
  dimension: otros {
    type: string
    sql: ${TABLE}.otros ;;
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
