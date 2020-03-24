FROM alpine:3.9.4

# Add some libs required by .NET runtime 
# https://github.com/dotnet/core/blob/master/Documentation/build-and-install-rhel6-prerequisites.md#troubleshooting
RUN apk add --no-cache \ 
    openssh libunwind \
    nghttp2-libs libidn krb5-libs libuuid lttng-ust zlib \
    libstdc++ libintl \
    icu

EXPOSE 80
EXPOSE 443

# Copy 
WORKDIR /app
COPY $(Build.SourcesDirectory)/publish ./

ENTRYPOINT ["./weatherapi", "--urls", "http://0.0.0.0:80"]

########################
## EXECUTE THIS COMMAND FIRST
## dotnet publish --runtime alpine-x64 -c Release --self-contained true -o ./publish
## --runtime alpine-x64 -c Release --self-contained true -o $(Build.SourcesDirectory)/publish
########################