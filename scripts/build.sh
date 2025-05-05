# Extract version from pyproject.toml
VERSION=$(grep -m1 '^version\s*=' pyproject.toml | cut -d '"' -f2)

# Define image name and tags
IMAGE_NAME="codygo-mono-sample"
TAG_LATEST="$IMAGE_NAME:latest"
TAG_VERSION="$IMAGE_NAME:v$VERSION"

echo "Building Docker image: $TAG_VERSION"

# Build the image using standard docker
docker build \
  -f Dockerfile \
  -t "$TAG_LATEST" \
  -t "$TAG_VERSION" \
  .

echo "Image built and tagged:"
docker images | grep "$IMAGE_NAME"
