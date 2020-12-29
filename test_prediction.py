import requests
import logging


def test_prediction():
    host = r'https://devopscidiproject.azurewebsites.net:443/predict'
    post_data = {
        "CHAS":{
            "0":0
        },
        "RM":{
            "0":6.575
        },
        "TAX":{
            "0":296.0
        },
        "PTRATIO":{
            "0":15.3
        },
        "B":{
            "0":396.9
        },
        "LSTAT":{
            "0":4.98
        }
    }

    try:
        response = requests.get(host,params=post_data)
        logging.info(response.status_code)
        assert response.status_code == '200'
        
    except: # pylint: disable=W0702
        logging.info(response.status_code)
        return "Test failed"
