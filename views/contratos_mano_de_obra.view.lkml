view: contratos_mano_de_obra {
  sql_table_name: bd_ic_cliente.contratos_mano_de_obra ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: bimestre {
    type: string
    sql: ${TABLE}.bimestre ;;
  }
  dimension: cant_emp {
    type: number
    sql: ${TABLE}.cant_emp ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: fecha_mano {
    type: number
    sql: ${TABLE}.fecha_mano ;;
  }
  dimension: fechas_fin {
    type: string
    sql: ${TABLE}.fechas_fin ;;
  }
  dimension: fechas_inicio {
    type: string
    sql: ${TABLE}.fechas_inicio ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: id_trabajador {
    type: string
    sql: ${TABLE}.id_trabajador ;;
  }
  dimension: nombres {
    type: string
    sql: ${TABLE}.nombres ;;
  }
  dimension: tipo_docs {
    type: string
    sql: ${TABLE}.tipo_docs ;;
  }
  dimension: trabajador_ciudad {
    type: string
    sql: ${TABLE}.trabajador_ciudad ;;
  }
  dimension: trabajador_dpto {
    type: string
    sql: ${TABLE}.trabajador_dpto ;;
  }
  dimension: trabajador_oficio {
    type: string
    sql: ${TABLE}.trabajador_oficio ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
