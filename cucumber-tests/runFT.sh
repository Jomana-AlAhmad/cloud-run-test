#!/usr/bin/env bash


../gradlew test -Dcucumber.options="--strict --tags @ft --plugin pretty classpath:features"  -Dtest=com.example.helloworld.RunFuncTest