view: mst_materiales_oxxo {
  sql_table_name: bd_ic_cliente.mst_materiales_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ciudades {
    type: string
    sql: ${TABLE}.ciudades ;;
  }
  dimension: clasificacion_contable {
    type: string
    sql: ${TABLE}.clasificacionContable ;;
  }
  dimension: cliente_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.clienteId ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension: codigo_suplos {
    type: string
    sql: ${TABLE}.codigoSuplos ;;
  }
  dimension: comprar {
    type: string
    sql: ${TABLE}.comprar ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: string
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: formula {
    type: string
    sql: ${TABLE}.formula ;;
  }
  dimension: limite_compra {
    type: number
    sql: ${TABLE}.limiteCompra ;;
  }
  dimension: nombre_adquisiciones {
    type: string
    sql: ${TABLE}.nombreAdquisiciones ;;
  }
  dimension: nombre_descriptivo {
    type: string
    sql: ${TABLE}.nombreDescriptivo ;;
  }
  dimension: proveedor {
    type: string
    sql: ${TABLE}.proveedor ;;
  }
  dimension: sector_seccion {
    type: string
    sql: ${TABLE}.sectorSeccion ;;
  }
  dimension: subcategoria {
    type: string
    sql: ${TABLE}.subcategoria ;;
  }
  dimension: tipo_compra_default {
    type: string
    sql: ${TABLE}.tipoCompraDefault ;;
  }
  dimension: tipo_entrega_directa {
    type: string
    sql: ${TABLE}.tipoEntregaDirecta ;;
  }
  dimension: tipo_habilitador {
    type: string
    sql: ${TABLE}.tipoHabilitador ;;
  }
  dimension: tipo_material {
    type: string
    sql: ${TABLE}.tipoMaterial ;;
  }
  dimension: unidad {
    type: string
    sql: ${TABLE}.unidad ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id]
  }
}
