view: requisicion_items {
  sql_table_name: bd_ic_cliente.requisicion_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: catalogo {
    type: number
    sql: ${TABLE}.catalogo ;;
  }
  dimension: codigo_item {
    type: string
    sql: ${TABLE}.codigo_item ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: entregables {
    type: string
    sql: ${TABLE}.entregables ;;
  }
  dimension: especificacion {
    type: string
    sql: ${TABLE}.especificacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_requisicion {
    type: number
    sql: ${TABLE}.id_requisicion ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.unidad_medida ;;
  }
  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }
  dimension: valor_unitario {
    type: number
    sql: ${TABLE}.valor_unitario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
