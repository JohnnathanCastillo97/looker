view: catalogo_biblioteca_grupo_erp_contenido {
  sql_table_name: bd_ic_cliente.catalogo_biblioteca_grupo_erp_contenido ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_cabecera {
    type: number
    sql: ${TABLE}.cod_cabecera ;;
  }
  dimension: codigo_maestra {
    type: number
    sql: ${TABLE}.codigo_maestra ;;
  }
  dimension: codigo_parametro {
    type: number
    sql: ${TABLE}.codigo_parametro ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension: solicitud_manual {
    type: string
    sql: ${TABLE}.solicitud_manual ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
