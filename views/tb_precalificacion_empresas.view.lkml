view: tb_precalificacion_empresas {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: anio_puntaje {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.anio_puntaje ;;
  }
  dimension: camara_comercio {
    type: string
    sql: ${TABLE}.camara_comercio ;;
  }
  dimension: camara_comercio_vigencia {
    type: string
    sql: ${TABLE}.camara_comercio_vigencia ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_empresa {
    type: string
    sql: ${TABLE}.estado_empresa ;;
  }
  dimension: puntaje_ruc {
    type: number
    sql: ${TABLE}.puntaje_ruc ;;
  }
  dimension: registro_actualizacion {
    type: number
    sql: ${TABLE}.registro_actualizacion ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension: revision_empresa {
    type: string
    sql: ${TABLE}.revision_empresa ;;
  }
  dimension: riesgo {
    type: string
    sql: ${TABLE}.riesgo ;;
  }
  dimension: tamano_empresa {
    type: string
    sql: ${TABLE}.tamano_empresa ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: ws_excel {
    type: string
    sql: ${TABLE}.wsExcel ;;
  }
  dimension: ws_pdf {
    type: string
    sql: ${TABLE}.wsPdf ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
