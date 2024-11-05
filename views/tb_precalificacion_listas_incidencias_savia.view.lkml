view: tb_precalificacion_listas_incidencias_savia {
  sql_table_name: bd_ic_cliente.tb_precalificacion_listas_incidencias_savia ;;

  dimension: cod_precalificacion_empresa {
    type: number
    sql: ${TABLE}.cod_precalificacion_empresa ;;
  }
  dimension: consulta {
    type: string
    sql: ${TABLE}.consulta ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_listas_restrictivas_incidencias {
    type: number
    sql: ${TABLE}.id_listas_restrictivas_incidencias ;;
  }
  dimension: lista {
    type: string
    sql: ${TABLE}.lista ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: no_doc {
    type: string
    sql: ${TABLE}.no_doc ;;
  }
  dimension: tipo_identificacion {
    type: string
    sql: ${TABLE}.tipo_identificacion ;;
  }
  dimension: tipo_incidente {
    type: string
    sql: ${TABLE}.tipo_incidente ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
  }
}
