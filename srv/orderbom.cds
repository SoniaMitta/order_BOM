using { API_ORDER_BILL_OF_MATERIAL_SRV as external } from './external/API_ORDER_BILL_OF_MATERIAL_SRV';

service orderbom {
    entity SalesOrderBOM as projection on external.SalesOrderBOM{
        BillOfMaterialCategory,
        BillOfMaterial,
        BillOfMaterialVariant,
        EngineeringChangeDocument,
        Material,
        Plant
    };
}

annotate orderbom.SalesOrderBOM with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : BillOfMaterialCategory
        },
        {
            $Type : 'UI.DataField',
            Value : BillOfMaterial
        },
        {
            $Type : 'UI.DataField',
            Value : BillOfMaterialVariant
        },
        {
            $Type : 'UI.DataField',
            Value : EngineeringChangeDocument
        },
        {
            $Type : 'UI.DataField',
            Value : Material
        },
        {
            $Type : 'UI.DataField',
            Value : Plant
        }
    ]
);