#!/usr/bin/env bash
# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# All of the scripts expect to find ".env" in the root folder
cp env .env
# .env is used as a configuration file for the rest of the project.
# Need to choose some values for the automated tests in Jenkins
sed -i "s/export K8S_VER=/export K8S_VER=1.9.7/g" .env
sed -i "s/export NEW_K8S_VER=/export NEW_K8S_VER=1.10.4/g" .env
sed -i "s/export GKE_VER=/export GKE_VER=1.9.7-gke.6/g" .env
sed -i "s/export NEW_GKE_VER=/export NEW_GKE_VER=1.10.2-gke.4/g" .env