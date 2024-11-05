view: tb_precalificacion_informacion_adicional_cenit {
  sql_table_name: bd_ic_cliente.tb_precalificacion_informacion_adicional_cenit ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: cod_usuario_apoyo {
    type: number
    sql: ${TABLE}.cod_usuario_apoyo ;;
  }
  dimension: cod_usuario_comprador {
    type: number
    sql: ${TABLE}.cod_usuario_comprador ;;
  }
  dimension: cod_usuario_planeador {
    type: number
    sql: ${TABLE}.cod_usuario_planeador ;;
  }
  dimension: descripcion_alcance_experiencias_requeridas {
    type: string
    sql: ${TABLE}.descripcion_alcance_experiencias_requeridas ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estructuras_plurales {
    type: string
    sql: ${TABLE}.estructuras_plurales ;;
  }
  dimension: experiencia_contratista_conjunto {
    type: string
    sql: ${TABLE}.experiencia_contratista_conjunto ;;
  }
  dimension: numero_maximo_integrantes {
    type: number
    sql: ${TABLE}.numero_maximo_integrantes ;;
  }
  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }
  dimension: porcentaje_maximo_integrantes {
    type: number
    sql: ${TABLE}.porcentaje_maximo_integrantes ;;
  }
  dimension: porcentaje_minimo_integrantes {
    type: number
    sql: ${TABLE}.porcentaje_minimo_integrantes ;;
  }
  dimension: tipo_estructuras_plurales {
    type: string
    sql: ${TABLE}.tipo_estructuras_plurales ;;
  }
  dimension: ubicacion_matriz_abastecimiento {
    type: string
    sql: ${TABLE}.ubicacion_matriz_abastecimiento ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
