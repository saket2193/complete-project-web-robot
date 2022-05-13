import json
import jsonpath

def read_locators_from_json(locatorname):
    response=json.loads("../JsonFiles/Elements.json")
    value=jsonpath.jsonpath(response,locatorname)
    return value