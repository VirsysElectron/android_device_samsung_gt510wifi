#
# Copyright (C) 2018 The LineageOS Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/gtelwifiue
PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/rr_gt510wifi.mk \
	$(LOCAL_DIR)/pa_gt510wifi.mk \
	$(LOCAL_DIR)/aicp_gt510wifi.mk \
	$(LOCAL_DIR)/lineage_gt510wifi.mk
