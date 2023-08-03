import requests

def get_aws_metadata(path):
    metadata_url = f"http://169.254.169.254{path}"

    try:
        response = requests.get(metadata_url)
        response.raise_for_status()
        metadata = response.text
        return metadata
    except requests.exceptions.RequestException as e:
        print(f"Error occurred while retrieving AWS metadata: {e}")
        return None

if __name__ == "__main__":
    metadata_path = "/latest/meta-data"
    instance_metadata = get_aws_metadata(metadata_path)
    if instance_metadata:
        # Convert the metadata string to JSON format
        metadata_dict = {}
        metadata_dict1 = {}
        metadata_dict2 = {}
        metadata_dict3 = {}
        for key in instance_metadata.splitlines():
            if (key[-1]) == "/" :  # curl http://169.254.169.254/latest/meta-data/network/
                metadata_path1 = "/latest/meta-data/" + key
                metadata_dict1 = {}
                for key1 in get_aws_metadata(metadata_path1).splitlines():
                    value1 = get_aws_metadata(metadata_path1 + f"/{key1}")
                    #print(key1)
                    #metadata_dict1[key1] = value1
                    if (key1[-1]) == "/" :  # 2nd /ww/  # curl http://169.254.169.254/latest/meta-data/network/interfaces/
                        metadata_path2 = "/latest/meta-data/" + key + key1
                        metadata_dict2 = {}
                        for key2 in get_aws_metadata(metadata_path2).splitlines():
                            value2 = get_aws_metadata(metadata_path2 + f"/{key2}")
                            #metadata_dict2[key2] = value2

                            if (key2[-1]) == "/" : # 3rd /ww/ww/  # curl http://169.254.169.254/latest/meta-data/network/interfaces/macs/
                              metadata_path3 = "/latest/meta-data/" + key + key1 + key2
                              metadata_dict3 = {}
                              for key3 in get_aws_metadata(metadata_path3).splitlines():
                                value3 = get_aws_metadata(metadata_path3 + f"/{key3}")
                                #metadata_dict2[key2] = value3
                              metadata_dict2[key2[:-1]] = metadata_dict3
                              #print(key2)
                            else:
                              value2 = get_aws_metadata(metadata_path2 + f"/{key2}")
                              metadata_dict2[key2] = value2
                              #print(key2)

                        metadata_dict1[key1[:-1]] = metadata_dict2
                        #print(key1)
                    else:
                      value1 = get_aws_metadata(metadata_path1 + f"/{key1}")
                      metadata_dict1[key1] = value1
                      #print(key1)
                metadata_dict[key[:-1]] = metadata_dict1
                #print(key)
            else:
                value = get_aws_metadata(metadata_path + f"/{key}")
                metadata_dict[key] = value
                #print(key)
                #print(key, value)
        print(metadata_dict)
        #print("====")
        #print(metadata_dict1)
