view: mst_preguntas_criterios_evaluacion {
  sql_table_name: bd_ic_cliente.mst_preguntas_criterios_evaluacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: criterio {
    type: string
    sql: ${TABLE}.criterio ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: opciones {
    type: string
    sql: ${TABLE}.opciones ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: peso {
    type: number
    sql: ${TABLE}.peso ;;
  }
  dimension: rango {
    type: string
    sql: ${TABLE}.rango ;;
  }
  dimension: requisito {
    type: string
    sql: ${TABLE}.requisito ;;
  }
  dimension: texto {
    type: string
    sql: ${TABLE}.texto ;;
  }
  dimension: tipo_pregunta {
    type: string
    sql: ${TABLE}.tipo_pregunta ;;
  }
  dimension: tooltip {
    type: string
    sql: ${TABLE}.tooltip ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
