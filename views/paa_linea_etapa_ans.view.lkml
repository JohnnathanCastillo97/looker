view: paa_linea_etapa_ans {
  sql_table_name: bd_ic_cliente.paa_linea_etapa_ans ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividad {
    type: string
    sql: ${TABLE}.actividad ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: dias {
    type: number
    sql: ${TABLE}.dias ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_paa_linea_tipo_etapa_ans {
    type: number
    sql: ${TABLE}.id_paa_linea_tipo_etapa_ans ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: operacion {
    type: string
    sql: ${TABLE}.operacion ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: orden_actividad {
    type: number
    sql: ${TABLE}.orden_actividad ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
