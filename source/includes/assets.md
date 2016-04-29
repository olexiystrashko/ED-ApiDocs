# Assets

## Get all assets

Returns a list of Assets that this account has access to.

```http
HTTP/1.1 200 OK
Content-Type: application/vnd.api+json

{
    "data": [
        {
            "attributes": {
                "floorspace_unit_slug": "m2",
                "note": "",
                "site_purpose_slug": "apartment",
                "site_structure_slug": "building",
                "title": "Home",
                "uarn": ""
            },
            "id": "3701",
            "relationships": {
                "asset_parent": {
                    "data": null
                },
                "location": {
                    "data": {
                        "id": "2674",
                        "type": "location"
                    }
                }
            },
            "type": "asset"
        }
    ],
    "links": {
        "first": "https://platform.energydeck.com/api/assets/?page=1",
        "last": "https://platform.energydeck.com/api/assets/?page=1",
        "next": null,
        "prev": null
    },
    "meta": {
        "pagination": {
            "count": 1,
            "page": 1,
            "pages": 1
        }
    }
}
```

### HTTP Request

`GET https://platform.energydeck.com/api/assets/`

### Query Parameters

Parameter | Type | Default | Description
----------|------|---------|------------
page | Integer | 1 | page
page_size | Integer | 10 | page size
asset_parent | Integer | | Filter assets list by parent asset ID

## Get specific asset

Returns an Asset by given ID.

```http
HTTP/1.1 200 OK
Content-Type: application/vnd.api+json

{
    "data": {
        "attributes": {
            "floorspace_unit_slug": "m2",
            "note": "",
            "site_purpose_slug": "apartment",
            "site_structure_slug": "building",
            "title": "Home",
            "uarn": ""
        },
        "id": "3701",
        "relationships": {
            "asset_parent": {
                "data": null
            },
            "location": {
                "data": {
                    "id": "2674",
                    "type": "location"
                }
            }
        },
        "type": "asset"
    }
}
```

### HTTP Request

`GET https://platform.energydeck.com/api/assets/<ID>/`

### Query Parameters

Parameter | Type | Default | Description
----------|------|---------|------------
ID | Integer |  | Ass
asset_parent | Integer | | Filter assets list by parent asset ID
include | String | | List of resources to include (*include=location,location.country*)
