const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const orderbomapi = await cds.connect.to('API_ORDER_BILL_OF_MATERIAL_SRV');

    this.on('READ', 'SalesOrderBOM', async req => {
        req.query.SELECT.columns = [
            { ref: ['BillOfMaterialCategory'] },
            { ref: ['BillOfMaterial'] },
            { ref:['BillOfMaterialVariant']},
            { ref:['EngineeringChangeDocument']},
            { ref:['Material']},
            { ref:['Plant']},
        ];
        return await orderbomapi.run(req.query);
    });
})