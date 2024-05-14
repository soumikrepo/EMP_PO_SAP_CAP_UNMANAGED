using EmployeeService as service from '../../srv/employee-service';
annotate service.businessPartner with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : BP_ROLE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EMAIL',
                Value : EMAIL,
            },
            {
                $Type : 'UI.DataField',
                Value : PHONE_NUMBER,
            },
            {
                $Type : 'UI.DataField',
                Value : FAX_NUMBER,
            },
            {
                $Type : 'UI.DataField',
                Value : WEB_ADDRESS,
            },
            {
                $Type : 'UI.DataField',
                Value : BP_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : COMPANY_NAME,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : BP_ROLE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EMAIL',
            Value : EMAIL,
        },
        {
            $Type : 'UI.DataField',
            Value : PHONE_NUMBER,
        },
        {
            $Type : 'UI.DataField',
            Value : FAX_NUMBER,
        },
        {
            $Type : 'UI.DataField',
            Value : WEB_ADDRESS,
        },
    ],
);

annotate service.businessPartner with {
    ADDRESS @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'address',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : ADDRESS_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'CITY',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'POSTAL_CODE',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'STREET',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BUILDING',
            },
        ],
    }
};

