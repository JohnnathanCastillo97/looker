view: ct_cabecera_adicional {
  sql_table_name: bd_ic_cliente.ct_cabecera_adicional ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ano_gravable {
    type: string
    sql: ${TABLE}.ano_gravable ;;
  }
  dimension: bimestre {
    type: string
    sql: ${TABLE}.bimestre ;;
  }
  dimension: cabecera_id {
    type: number
    sql: ${TABLE}.cabecera_id ;;
  }
  dimension: ciudad_agente_retenedor {
    type: string
    sql: ${TABLE}.ciudad_agente_retenedor ;;
  }
  dimension: ciudad_pago_retencion {
    type: string
    sql: ${TABLE}.ciudad_pago_retencion ;;
  }
  dimension: ciudad_practica_retencion {
    type: string
    sql: ${TABLE}.ciudad_practica_retencion ;;
  }
  dimension: ciudad_tercero {
    type: string
    sql: ${TABLE}.ciudad_tercero ;;
  }
  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: des_tipo_certificado {
    type: string
    sql: ${TABLE}.des_tipo_certificado ;;
  }
  dimension: direccion_agente_retenedor {
    type: string
    sql: ${TABLE}.direccion_agente_retenedor ;;
  }
  dimension: direccion_tercero {
    type: string
    sql: ${TABLE}.direccion_tercero ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: fecha_desde {
    type: string
    sql: ${TABLE}.fecha_desde ;;
  }
  dimension: fecha_hasta {
    type: string
    sql: ${TABLE}.fecha_hasta ;;
  }
  dimension: monto_total {
    type: string
    sql: ${TABLE}.monto_total ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: nit_agente_retenedor {
    type: string
    sql: ${TABLE}.nit_agente_retenedor ;;
  }
  dimension: notas {
    type: string
    sql: ${TABLE}.notas ;;
  }
  dimension: periodo_final {
    type: string
    sql: ${TABLE}.periodo_final ;;
  }
  dimension: periodo_inicial {
    type: string
    sql: ${TABLE}.periodo_inicial ;;
  }
  dimension: tasa {
    type: string
    sql: ${TABLE}.tasa ;;
  }
  dimension: tasa_base {
    type: string
    sql: ${TABLE}.tasa_base ;;
  }
  dimension: tipo_identificacion {
    type: string
    sql: ${TABLE}.tipo_identificacion ;;
  }
  dimension: total_neto {
    type: string
    sql: ${TABLE}.total_neto ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor_base {
    type: string
    sql: ${TABLE}.valor_base ;;
  }
  dimension: valor_retenido {
    type: string
    sql: ${TABLE}.valor_retenido ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
