# Getting Started

## Ruby Information

Ruby information provides offline details.

```
# ri String
# ri String#upcase
```

By default these aren't installed in the Docker image, to do so

```
# apk add ruby-doc
# cp -r /usr/share/ri /usr/local/share/ri
```
