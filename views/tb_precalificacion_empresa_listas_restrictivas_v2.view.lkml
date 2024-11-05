view: tb_precalificacion_empresa_listas_restrictivas_v2 {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_listas_restrictivas_v2 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_lista_restrictiva_proveedor {
    type: number
    sql: ${TABLE}.cod_lista_restrictiva_proveedor ;;
  }
  dimension: cod_precalificacion_empresa {
    type: number
    sql: ${TABLE}.cod_precalificacion_empresa ;;
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
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension: tipo_hallazgo {
    type: string
    sql: ${TABLE}.tipo_hallazgo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: vigencia {
    type: string
    sql: ${TABLE}.vigencia ;;
  }
  dimension: ws_anexo {
    type: string
    sql: ${TABLE}.wsAnexo ;;
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
