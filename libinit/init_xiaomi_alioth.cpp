/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t aliothin_info = {
    .hwc_value = "INDIA",
    .sku_value = "",

    .mod_device = "aliothin",
    .name = "aliothin",
    .brand = "Mi",
    .device = "aliothin",
    .marketname = "Mi 11X",
    .model = "M2012K11AI",

    .nfc = false,
};

static const variant_info_t alioth_global_info = {
    .hwc_value = "GLOBAL",
    .sku_value = "",

    .mod_device = "alioth_global",
    .name = "alioth_global",
    .brand = "POCO",
    .device = "alioth",
    .marketname = "POCO F3",
    .model = "M2012K11AG",

    .nfc = true,
};

static const variant_info_t alioth_info = {
    .hwc_value = "",
    .sku_value = "",

    .mod_device = "alioth",
    .name = "alioth",
    .brand = "Redmi",
    .device = "alioth",
    .marketname = "Redmi K40",
    .model = "M2012K11AC",

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    aliothin_info,
    alioth_global_info,
    alioth_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
