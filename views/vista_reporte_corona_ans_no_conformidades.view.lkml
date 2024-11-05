view: vista_reporte_corona_ans_no_conformidades {
  sql_table_name: bd_ic_cliente.VISTA_REPORTE_CORONA_ANS_NO_CONFORMIDADES ;;

  dimension: aceptacin_comprador {
    type: string
    sql: ${TABLE}.`Aceptación_comprador` ;;
  }
  dimension: aceptacin_proveedor {
    type: string
    sql: ${TABLE}.`Aceptación_proveedor` ;;
  }
  dimension: cantidad_de_pedido {
    type: number
    sql: ${TABLE}.Cantidad_de_pedido ;;
  }
  dimension: cantidad_pendiente {
    type: number
    sql: ${TABLE}.Cantidad_pendiente ;;
  }
  dimension: cdigo_de_material {
    type: string
    sql: ${TABLE}.`Código_de_material` ;;
  }
  dimension: centro_logstico {
    type: string
    sql: ${TABLE}.`Centro_Logístico` ;;
  }
  dimension: codigo_proveedor {
    type: string
    sql: ${TABLE}.Codigo_proveedor ;;
  }
  dimension: documento_de_compras {
    type: number
    sql: ${TABLE}.Documento_de_compras ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }
  dimension: estado_no_conformidad {
    type: string
    sql: ${TABLE}.Estado_No_conformidad ;;
  }
  dimension_group: fecha_de_documento {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fecha_de_documento ;;
  }
  dimension_group: fecha_de_entrega_de_pedido {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fecha_de_entrega_de_pedido ;;
  }
  dimension_group: fecha_de_ltima_entrega {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`Fecha_de_última_entrega` ;;
  }
  dimension: grupo_de_compras {
    type: string
    sql: ${TABLE}.Grupo_de_compras ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }
  dimension: nombre_proveedor {
    type: string
    sql: ${TABLE}.Nombre_proveedor ;;
  }
  dimension: orgnizacin_de_compras {
    type: string
    sql: ${TABLE}.`Orgnización_de_Compras` ;;
  }
  dimension: posicin {
    type: number
    sql: ${TABLE}.`Posición` ;;
  }
  dimension: precio_neto {
    type: number
    sql: ${TABLE}.Precio_Neto ;;
  }
  dimension: seguimiento_si_no {
    type: string
    sql: ${TABLE}.Seguimiento_SI_NO ;;
  }
  dimension: texto_breve {
    type: string
    sql: ${TABLE}.Texto_breve ;;
  }
  dimension: tiene_no_conformidad {
    type: string
    sql: ${TABLE}.Tiene_No_conformidad ;;
  }
  dimension: unidad_de_medida {
    type: string
    sql: ${TABLE}.Unidad_de_Medida ;;
  }
  measure: count {
    type: count
  }
}
