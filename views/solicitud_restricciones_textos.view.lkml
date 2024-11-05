view: solicitud_restricciones_textos {
  sql_table_name: bd_ic_cliente.solicitud_restricciones_textos ;;
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
  dimension: id_base {
    type: string
    sql: ${TABLE}.id_base ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_tipo_lista {
    type: number
    sql: ${TABLE}.id_tipo_lista ;;
  }
  dimension: lista {
    type: string
    sql: ${TABLE}.lista ;;
  }
  dimension: modo {
    type: string
    sql: ${TABLE}.modo ;;
  }
  dimension: resultado {
    type: string
    sql: ${TABLE}.resultado ;;
  }
  dimension: resultado2 {
    type: string
    sql: ${TABLE}.resultado2 ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_validacion {
    type: string
    sql: ${TABLE}.tipo_validacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
