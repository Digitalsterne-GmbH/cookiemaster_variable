___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Digitalsterne Cookie Consent State",
  "description": "",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const queryPermission = require('queryPermission');
const getCookieValues = require('getCookieValues');
const cookieName = 'digitalsterne_cookie_consent';

if (queryPermission('get_cookies', cookieName)) {
  const cookieValues = getCookieValues(cookieName)[0].split(",");
  var optin = "|";
  cookieValues.forEach(function(value){
    var pair = value.split(":");
    if(pair[1].indexOf("true") > -1){
      optin += pair[0] + "|";
    }
  });
  return optin;
}else{
  return false;
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "digitalsterne_cookie_consent"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 27.10.2020, 13:43:28


