view: metro_datos_presupuestales_sap_posiciones {
  sql_table_name: bd_ic_cliente.metro_datos_presupuestales_sap_posiciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: almacen {
    type: string
    sql: ${TABLE}.Almacen ;;
  }
  dimension: borrado {
    type: string
    sql: ${TABLE}.Borrado ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.Centro ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }
  dimension: detail {
    type: string
    sql: ${TABLE}.Detail ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.Documento ;;
  }
  dimension_group: fecha_entrega {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaEntrega ;;
  }
  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
  }
  dimension: imputacion {
    type: string
    sql: ${TABLE}.Imputacion ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }
  dimension: necesidad {
    type: string
    sql: ${TABLE}.Necesidad ;;
  }
  dimension: posicion {
    type: string
    sql: ${TABLE}.Posicion ;;
  }
  dimension: precio {
    type: string
    sql: ${TABLE}.Precio ;;
  }
  dimension: prio_urg {
    type: string
    sql: ${TABLE}.PrioUrg ;;
  }
  dimension: solicitante {
    type: string
    sql: ${TABLE}.Solicitante ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }
  dimension: unidad {
    type: string
    sql: ${TABLE}.Unidad ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
