view: contratos_polizas {
  sql_table_name: bd_ic_cliente.contratos_polizas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: amparo {
    type: string
    sql: ${TABLE}.amparo ;;
  }
  dimension: clase {
    type: yesno
    sql: ${TABLE}.clase ;;
  }
  dimension: email_corredor {
    type: string
    sql: ${TABLE}.email_corredor ;;
  }
  dimension: entidad_expide {
    type: string
    sql: ${TABLE}.entidad_expide ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_expedicion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_expedicion ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: id_poliza {
    type: number
    sql: ${TABLE}.id_poliza ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: numero_poliza {
    type: string
    sql: ${TABLE}.numero_poliza ;;
  }
  dimension: obligatoria {
    type: number
    sql: ${TABLE}.obligatoria ;;
  }
  dimension: reportada {
    type: string
    sql: ${TABLE}.reportada ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  dimension: ruta_aprobado_corredor_vanti {
    type: string
    sql: ${TABLE}.ruta_aprobado_corredor_vanti ;;
  }
  dimension: ruta_carta_no_siniestro {
    type: string
    sql: ${TABLE}.ruta_carta_no_siniestro ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension_group: valido_hasta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.valido_hasta ;;
  }
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos_polizas_rev_apro.count]
  }
}
