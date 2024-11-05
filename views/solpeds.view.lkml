view: solpeds {
  sql_table_name: bd_ic_cliente.solpeds ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: activo_fijo {
    type: string
    sql: ${TABLE}.ActivoFijo ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.Centro ;;
  }
  dimension: centro_costo {
    type: string
    sql: ${TABLE}.CentroCosto ;;
  }
  dimension: clase_documento {
    type: string
    sql: ${TABLE}.ClaseDocumento ;;
  }
  dimension: clase_valoracion {
    type: string
    sql: ${TABLE}.ClaseValoracion ;;
  }
  dimension: cod_contenido {
    type: number
    sql: ${TABLE}.CodContenido ;;
  }
  dimension: creador_por {
    type: string
    sql: ${TABLE}.CreadorPor ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: fecha_entrega {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaEntrega ;;
  }
  dimension: marca_borrado {
    type: string
    sql: ${TABLE}.MarcaBorrado ;;
  }
  dimension: num_contrato {
    type: string
    sql: ${TABLE}.NumContrato ;;
  }
  dimension: num_material {
    type: string
    sql: ${TABLE}.NumMaterial ;;
  }
  dimension: num_material_proveedor {
    type: string
    sql: ${TABLE}.NumMaterialProveedor ;;
  }
  dimension: num_necesidades {
    type: string
    sql: ${TABLE}.NumNecesidades ;;
  }
  dimension: num_sol_pedido {
    type: string
    sql: ${TABLE}.NumSolPedido ;;
  }
  dimension: orden_co {
    type: string
    sql: ${TABLE}.OrdenCO ;;
  }
  dimension: orden_pm {
    type: string
    sql: ${TABLE}.OrdenPM ;;
  }
  dimension: plan_necesidades {
    type: string
    sql: ${TABLE}.PlanNecesidades ;;
  }
  dimension: pos_contrato_marco {
    type: string
    sql: ${TABLE}.PosContratoMarco ;;
  }
  dimension: pos_sol_pedido {
    type: string
    sql: ${TABLE}.PosSolPedido ;;
  }
  dimension: tipo_imputacion {
    type: string
    sql: ${TABLE}.TipoImputacion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: urgencia_necesidad {
    type: string
    sql: ${TABLE}.UrgenciaNecesidad ;;
  }
  dimension: usuario_solicitante {
    type: string
    sql: ${TABLE}.UsuarioSolicitante ;;
  }
  measure: count {
    type: count
    drill_fields: [id, solpeds_position_ocns.count, solpeds_status_ocns.count]
  }
}
