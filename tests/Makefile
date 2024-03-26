TIMESTAMP=$(shell date --utc "+%s")

all: test-tags

.PHONY: test-tags
## test-tags: [test] runs this specific test
test-tags:
	cd standard && ../../bin/test.sh $(TIMESTAMP) TestAwsResourceTags
