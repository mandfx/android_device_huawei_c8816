/*
   Copyright (c) 2014, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_msm.h"

void init_msm_properties(unsigned long msm_id, unsigned long msm_ver, char *board_type)
{
    char platform[PROP_VALUE_MAX];
    char model[110];
    FILE* fp;
    int rc;

    UNUSED(msm_id);
    UNUSED(msm_ver);
    UNUSED(board_type);

    rc = property_get("ro.board.platform", platform);
    if (!rc || !ISMATCH(platform, ANDROID_TARGET))
        return;

    fp = fopen("/proc/app_info", "rb");
    while (fgets(model, 100, fp))
        if (strstr(model, "huawei_fac_product_name") != NULL)
            break;



    /* C8816 */
    if (strstr(model, "C8816") != NULL) {
        property_set("ro.product.model", "C8816");
        property_set("ro.product.name", "C8816");
    	  property_set(PROP_LCDDENSITY, "240");
        property_set("ro.config.is_cdma_phone", "true");
        property_set("ro.config.cdma.globalMode", "true");
        property_set("ro.com.android.dataroaming","false");
        property_set("ro.build.description", "C8816-user 4.4.4 GRJ90 C92B186 release-keys");
        property_set("ro.build.fingerprint", "Huawei/C8816/hwC8816:4.4.4/HuaweiC8816/C92B186:user/release-keys");
    }
    /* 		C8816D */
    else if (strstr(model, "C8816D") != NULL) {
        property_set("ro.product.model", "C8816D");
        property_set("ro.product.name", "C8816D");
		  property_set(PROP_LCDDENSITY, "240");
        property_set("ro.config.is_cdma_phone", "true");
        property_set("ro.config.cdma.globalMode", "true");
        property_set("ro.com.android.dataroaming","false");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.dsds.enabled", "true");
        property_set("ro.build.description", "C8816D-user 4.4.4 GRJ90 C01B191 release-keys");
        property_set("ro.build.fingerprint", "Huawei/C8816D/hwC8816D:4.4.4/HuaweiC8816D/C92B191:user/release-keys");
    }
}
