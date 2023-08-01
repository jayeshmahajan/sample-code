def get_value(obj, key):
    keys = key.split('/')
    value = obj

    for k in keys:
        #print(k)
        if isinstance(value, dict) and k in value:
         #   print(value)
            value = value[k]
        else:
            return "Not found"

    return value

# Test
object_1 = {"a": {"b": {"c": "d"}}}
key_1 = "a/b/c"
print(get_value(object_1, key_1))  # Output: d

object_2 = {"x": {"y": {"z": "a"}}}
key_2 = "x/y/z"
print(get_value(object_2, key_2))  # Output: a

object_3 = {"x": {"y": {"z": "a"}}}
key_3 = "x/y/a"
print(get_value(object_3, key_3))  # Output: null
