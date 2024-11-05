view: solpeds_info_posicion {
  sql_table_name: bd_ic_cliente.solpeds_info_posicion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: cantidad_base {
    type: number
    sql: ${TABLE}.CantidadBase ;;
  }
  dimension: cod_contenido {
    type: number
    sql: ${TABLE}.CodContenido ;;
  }
  dimension: cod_material {
    type: string
    sql: ${TABLE}.CodMaterial ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: des_material {
    type: string
    sql: ${TABLE}.DesMaterial ;;
  }
  dimension: dias_plazo_pago {
    type: number
    sql: ${TABLE}.DiasPlazoPago ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaFin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaInicio ;;
  }
  dimension: grupo_articulos {
    type: string
    sql: ${TABLE}.GrupoArticulos ;;
  }
  dimension: grupo_compra {
    type: string
    sql: ${TABLE}.GrupoCompra ;;
  }
  dimension: id_proveedor {
    type: string
    sql: ${TABLE}.IdProveedor ;;
  }
  dimension: ind_borrado {
    type: string
    sql: ${TABLE}.IndBorrado ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }
  dimension: num_contrato_marco {
    type: string
    sql: ${TABLE}.NumContratoMarco ;;
  }
  dimension: org_compras {
    type: string
    sql: ${TABLE}.OrgCompras ;;
  }
  dimension: pos_contrato_marco {
    type: number
    sql: ${TABLE}.PosContratoMarco ;;
  }
  dimension: precio_unitario {
    type: number
    sql: ${TABLE}.PrecioUnitario ;;
  }
  dimension: razon_social_prove {
    type: string
    sql: ${TABLE}.RazonSocialProve ;;
  }
  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.UnidadMedida ;;
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
