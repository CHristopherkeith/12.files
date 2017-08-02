var myApp = angular.module('myApp',[]);

myApp.controller('myCtrl',['$scope','$http',function($scope,$http){

    // console.log('foobar')

    $scope.init = function(){
        // console.log('foo')

        // console.log(window.top)

        // console.log(window.self)

        if(window.top != window.self){

    // 　　  console.log('fileinframe')

    　　}else{

            // console.log('filenotinframe')

        }

    }

	$scope.linkDatabase = function(){

		$http({

            method: 'GET',

            url: 'project/linkDatabase',

            // url: 'http://localhost:3000/project/linkDatabase'

            // url: 'download/download.zip'
// 
            // url: 'mockData/mockData.json'

            // responseType: 'json'

            // data:{'KK':12}

        }).success(function(data,status,headers,config) {

        	console.log(data)

        }).error(function(data,status,headers,config){

        	console.log('fail')

        	console.log(data)

        })

	}

}])