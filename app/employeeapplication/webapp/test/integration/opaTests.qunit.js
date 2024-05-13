sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/app/employeeapplication/test/integration/FirstJourney',
		'com/app/employeeapplication/test/integration/pages/businessPartnerList',
		'com/app/employeeapplication/test/integration/pages/businessPartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, businessPartnerList, businessPartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/app/employeeapplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebusinessPartnerList: businessPartnerList,
					onThebusinessPartnerObjectPage: businessPartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);