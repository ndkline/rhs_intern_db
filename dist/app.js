var uniqueItems = function (data, key) {
    var result = new Array();
    for (var i = 0; i < data.length; i++) {
        var value = data[i][key];
 
        if (result.indexOf(value) == -1) {
            result.push(value);
        }
    
    }
    return result;
};

angular.module('myApp', [])
  .controller('MyCtrl', function($scope, filterFilter, $http) {

    $scope.toggleStates = true;
    $scope.toggleStatesFilter = function() {
        $scope.toggleStates = $scope.toggleStates === false ? true : false;
    }
    $scope.toggleCounties = true;
    $scope.toggleCountiesFilter = function() {
        $scope.toggleCounties = $scope.toggleCounties === false ? true : false;
    }
    $scope.toggleTypes = true;
    $scope.toggleTypesFilter = function() {
        $scope.toggleTypes = $scope.toggleTypes === false ? true : false;
    }


    $scope.useLocation = {};
    $scope.useStates = {};
    $scope.useCounties = {};
    $scope.useTypes = {};
    $scope.internships = [];
    $scope.showCounties = false;

    $http.get('https://ed.psu.edu/rest/data/crudService').success(function(data) {

        // $scope.internships = data.DATA;
        // $scope.orderby = 'ID';

        var internships = data.DATA;
            
        for (var i = 0, len = internships.length; i < len; i++) {
          
            var temp_internship = {};

            for (var x = 0, x_len = internships[i].length; x < x_len; x++){
                var key = data.COLUMNS[x].toLowerCase();
                
                

                if (key==="email" && !!internships[i][x]) {
                    internships[i][x]=internships[i][x].replace(/\s+/g, '');
                }
                if (key === "state") {
                    if (internships[i][x] === null) { 
                        console.log(internships[i])
                    }
                    internships[i][x]=internships[i][x].replace(/\s+/g, '');
                    internships[i][x]=internships[i][x].toUpperCase();
                }
                if (key === "county") {
                    internships[i][x]=internships[i][x].replace(/\s+/g, '');
                }

                temp_internship[key]=internships[i][x];
            }

            $scope.internships[i] = temp_internship;
        }



    });


    console.log($scope.internships);
    // Watch the internships that are selected
    $scope.$watch(function () {
        return {
            internships: $scope.internships,
            useLocation: $scope.location,
            useStates: $scope.useStates,
            useCounties: $scope.useCounties,
            useTypes: $scope.useTypes
        }
    }, function (value) {

        var selected;
        var filterAfterStates = [];        
        var filterAfterCounties = [];      

        // Client Populations and Disability Types
        $scope.types = {
            'Adolescents': "adolescents",
            'Adult': "adult",
            'Blindness & Visual Impairment': "bv",
            'Children': "children",
            'Corrections': "corrections",
            'Counseling': "counseling",
            'Cerebral Palsy ': "cp",
            'Drug and Alcohol': "d_a",
            'Elderly': "elderly",
            'Family': "family",
            'Mental Health': "mh",
            'Neurological Impairment':"ni",
            'Intellectual Disability ': "intdis",
            'Neurological Impairment': "neuro",
            'Occupational Therapy/ Physical Therapy': "ot_pt",
            'Physical Disability': "physical",
            'Independent Living': "il",
            'Student': "student",
            'Vocational Rehabilitation': "voc",
            'Women': "women"
        };

        $scope.stateConvertion = {
          "AL": "B",
          "AK": "A",
          "AZ": "D",
          "AR": "C",
          "CA": "E",
          "CO": "F",
          "CT": "G",
          "DE": "H",
          "DC": "y",
          "FL": "I",
          "GA": "J",
          "HI": "K",
          "ID": "M",
          "IL": "N",
          "IN": "O",
          "IA": "L",
          "KS": "P",
          "KY": "Q",
          "LA": "R",
          "ME": "U",
          "MD": "T",
          "MA": "S",
          "MI": "V",
          "MN": "W",
          "MS": "Y",
          "MO": "X",
          "MT": "Z",
          "NE": "c",
          "NV": "g",
          "NH": "d",
          "NJ": "e",
          "NM": "f",
          "NY": "h",
          "NC": "a",
          "ND": "b",
          "OH": "i",
          "OK": "j",
          "OR": "k",
          "PA": "l",
          "RI": "m",
          "SC": "n",
          "SD": "o",
          "TN": "p",
          "TX": "q",
          "UT": "r",
          "VT": "t",
          "VA": "s",
          "WA": "u",
          "WV": "w",
          "WI": "v",
          "WY": "x",
          "US": "z"
        }  
        
        $scope.stateGroup = uniqueItems($scope.internships, 'state');
        selected = false;
        for (var j in $scope.internships) {
            var p = $scope.internships[j];

            for (var i in $scope.useStates) {

                $scope.showCounties = true;

                if ($scope.useStates[i]) {

                    selected = true;
                    if (i == p.state) {
                        filterAfterStates.push(p);
                        break;
                    }
                }
            }        
        }
        if (!selected) {
            filterAfterStates = $scope.internships;
            $scope.useCounties = {}; // TODO fix this -- doesn't let you select county
            $scope.showCounties = false;
        }

        $scope.stateGroup.sort();

        $scope.countyGroup = uniqueItems(filterAfterStates, 'county');
        selected = false;
        for (var j in filterAfterStates) {
            var p = filterAfterStates[j];
            for (var i in $scope.useCounties) {
                if ($scope.useCounties[i]) {
                    selected = true;
                    if (i == p.county) {
                        
                        $scope.useStates[p.state]=true;
                        filterAfterCounties.push(p);
                        break;
                    }
                }
            }       
        }
        if (!selected) {
            filterAfterCounties = filterAfterStates;
        }

        $scope.countyGroup.sort();
        $scope.countyGroup.splice(0,1);
       
        // $scope.typeGroup = uniqueItems(filterAfterCounties, t);
        $scope.typeGroup = $scope.types;
        var filterAfterType = [];        
        selected = false;
        for (var j in filterAfterCounties) {
            // Internship Object
            var p = filterAfterCounties[j];

            for (var i in $scope.useTypes) {

                if (p.adolescents && $scope.useTypes['adolescents']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.adult && $scope.useTypes['adult']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.alternative_education && $scope.useTypes['alternative_education']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.bv && $scope.useTypes['bv']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.children && $scope.useTypes['children']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.corrections && $scope.useTypes['corrections']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.counseling && $scope.useTypes['counseling']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.cp && $scope.useTypes['cp']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.d_a && $scope.useTypes['d_a']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.elderly && $scope.useTypes['elderly']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.family && $scope.useTypes['family']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.mh && $scope.useTypes['mh']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.mr && $scope.useTypes['mr']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.neuro && $scope.useTypes['neuro']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.ot_pt && $scope.useTypes['ot_pt']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.private && $scope.useTypes['private']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.physical && $scope.useTypes['physical']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.rehab && $scope.useTypes['rehab']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.student && $scope.useTypes['student']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.vi && $scope.useTypes['vi']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.voc && $scope.useTypes['voc']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }
                if (p.women && $scope.useTypes['women']){
                    selected = true;
                    filterAfterType.push(p);
                    break;
                
                }

                if ($scope.useTypes[i]) {
                    selected = true;
                    if (i == p.type) {
                        filterAfterType.push(p);
                        break;
                    }
                }
            }    
        }
        if (!selected) {
            filterAfterType = filterAfterCounties;
        }  


        $scope.filteredInternships = filterAfterType;  
        // console.log($scope.filteredInternships);
    }, true);
    
    
        
    $scope.$watch('filtered', function (newValue) {
        if (angular.isArray(newValue)) {
            console.log(newValue.length);
        }
    }, true);    
  });
