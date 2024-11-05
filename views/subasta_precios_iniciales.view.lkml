view: subasta_precios_iniciales {
  sql_table_name: bd_ic_cliente.subasta_precios_iniciales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: email_usuario {
    type: string
    sql: ${TABLE}.email_usuario ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_modifica {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modifica ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }
  dimension: lote_id {
    type: number
    sql: ${TABLE}.lote_id ;;
  }
  dimension: precio_inicial {
    type: number
    sql: ${TABLE}.precio_inicial ;;
  }
  dimension: prov_id {
    type: number
    sql: ${TABLE}.prov_id ;;
  }
  dimension: subasta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.subasta_id ;;
  }
  dimension: usuario_modifica {
    type: number
    sql: ${TABLE}.usuario_modifica ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id, subasta.id]
  }
}
