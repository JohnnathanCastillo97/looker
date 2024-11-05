view: validacion_informacion_cabacera {
  sql_table_name: bd_ic_cliente.validacion_informacion_cabacera ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto_adicional {
    type: string
    sql: ${TABLE}.adjunto_adicional ;;
  }
  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: opciones {
    type: string
    sql: ${TABLE}.opciones ;;
  }
  dimension: registro_creacion {
    type: string
    sql: ${TABLE}.registro_creacion ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: titulo_pregunta {
    type: string
    sql: ${TABLE}.titulo_pregunta ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
