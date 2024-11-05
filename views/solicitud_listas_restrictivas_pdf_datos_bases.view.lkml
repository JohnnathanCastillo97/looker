view: solicitud_listas_restrictivas_pdf_datos_bases {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_pdf_datos_bases ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: base {
    type: string
    sql: ${TABLE}.base ;;
  }
  dimension: cabeceras {
    type: string
    sql: ${TABLE}.cabeceras ;;
  }
  dimension: cantidad_grupos_analizados {
    type: number
    sql: ${TABLE}.cantidadGruposAnalizados ;;
  }
  dimension: cantidad_grupos_totales {
    type: number
    sql: ${TABLE}.cantidadGruposTotales ;;
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
  dimension: hallazgo {
    type: string
    sql: ${TABLE}.hallazgo ;;
  }
  dimension: id_base {
    type: string
    sql: ${TABLE}.idBase ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.idCliente ;;
  }
  dimension: id_lista_restrictiva {
    type: number
    sql: ${TABLE}.idListaRestrictiva ;;
  }
  dimension: id_lista_restrictiva_analisis {
    type: number
    sql: ${TABLE}.idListaRestrictivaAnalisis ;;
  }
  dimension: id_lista_restrictiva_diligenciamiento {
    type: number
    sql: ${TABLE}.idListaRestrictivaDiligenciamiento ;;
  }
  dimension: modo {
    type: string
    sql: ${TABLE}.modo ;;
  }
  dimension: solicitud_consecutivo {
    type: number
    sql: ${TABLE}.solicitudConsecutivo ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
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
