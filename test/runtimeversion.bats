#!/usr/bin/env bats

load helpers

function teardown() {
	cleanup_test
}

@test "ocic runtimeversion" {
	start_ocid
	ocic runtimeversion
	[ "$status" -eq 0 ]
	stop_ocid
}
