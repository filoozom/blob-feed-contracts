#!/bin/sh

forge create --rpc-url https://rpc.chiadochain.net \
    --private-key $PRIVATE_KEY \
    --verify --verifier sourcify \
    src/BlobFeed.sol:BlobFeed
