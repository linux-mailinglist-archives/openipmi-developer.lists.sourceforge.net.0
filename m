Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C17C7C521B
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 Oct 2023 13:31:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qqXRC-0008NJ-Mh;
	Wed, 11 Oct 2023 11:31:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonathan.cameron@huawei.com>) id 1qqXRA-0008NB-FG
 for openipmi-developer@lists.sourceforge.net;
 Wed, 11 Oct 2023 11:31:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=40r0DvV7A2t4EMfNiOkSa/vtLYUh6VnvmKKCw5zOLKs=; b=jaaHdb/E5rAyHRQf1kzmYPVpyN
 Ctoha6Wgap673Gzlr3HRv50QmYjgkj5tt581Xi5ynUMoFZe4fzXlPe9sAHkZ8S7usExPJ5hpnA0Se
 yiVGQgoHdnUy9qHWYGoSp4S0eS2UJp2ESBqwWW1Ji7s7kgGHxyVjj+GwPJ8+8awCRjDs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=40r0DvV7A2t4EMfNiOkSa/vtLYUh6VnvmKKCw5zOLKs=; b=jNTvCyy0but6hC4+7Dxrt01Q/J
 NODNdw9HxwKwYcEswjoaILtiy6hFCAayfVPGbvWiIyvZPpIaFq1+vihxPJnhMif9z3qRA4FI2Y5xx
 OfS6FHRdnYolY7fVpQI++P5V0crNKkClD3ZLdqIGZ6xn7mOGg1+8SknKB8ERQbjJydgE=;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qqXR8-0005k1-Du for openipmi-developer@lists.sourceforge.net;
 Wed, 11 Oct 2023 11:31:37 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.207])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4S59ZJ0pD6z6K5Wx;
 Wed, 11 Oct 2023 19:31:04 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Wed, 11 Oct
 2023 12:31:24 +0100
Date: Wed, 11 Oct 2023 12:31:23 +0100
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Message-ID: <20231011123123.00000394@Huawei.com>
In-Reply-To: <20231010122321.823-2-aladyshev22@gmail.com>
References: <20231010122321.823-1-aladyshev22@gmail.com>
 <20231010122321.823-2-aladyshev22@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100006.china.huawei.com (7.191.160.224) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue,
 10 Oct 2023 15:23:19 +0300 Konstantin Aladyshev <aladyshev22@gmail.com>
 wrote: > The current KCS header files can be utilized by both IPMI drivers
 > (drivers/char/ipmi) and MCTP driver (drivers/net/mctp). To be able to >
 use them in both cases move the headers to 'include/linux' [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.176.79.56 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.79.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qqXR8-0005k1-Du
Subject: Re: [Openipmi-developer] [PATCH v5 1/3] ipmi: Move KCS headers to
 common include folder
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Jonathan Cameron via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: tmaimon77@gmail.com, minyard@acm.org, yuenn@google.com, andrew@aj.id.au,
 venture@google.com, openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, avifishman70@gmail.com, edumazet@google.com,
 netdev@vger.kernel.org, linux-aspeed@lists.ozlabs.org, kuba@kernel.org,
 jk@codeconstruct.com.au, matt@codeconstruct.com.au, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 10 Oct 2023 15:23:19 +0300
Konstantin Aladyshev <aladyshev22@gmail.com> wrote:

> The current KCS header files can be utilized by both IPMI drivers
> (drivers/char/ipmi) and MCTP driver (drivers/net/mctp). To be able to
> use them in both cases move the headers to 'include/linux' folder.
> 
> Signed-off-by: Konstantin Aladyshev <aladyshev22@gmail.com>
Not particularly important but I wonder if
include/linux/kcs/bmc.h
include/linux/kcs/bmc_client.h
include/linux/kcs/bmc_device.h

might be a cleaner choice given that you are moving them.

I don't care that much though so up to you :)

Jonathan

> ---
>  drivers/char/ipmi/kcs_bmc.c                           | 8 +++-----
>  drivers/char/ipmi/kcs_bmc_aspeed.c                    | 3 +--
>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c                 | 2 +-
>  drivers/char/ipmi/kcs_bmc_npcm7xx.c                   | 2 +-
>  drivers/char/ipmi/kcs_bmc_serio.c                     | 2 +-
>  {drivers/char/ipmi => include/linux}/kcs_bmc.h        | 0
>  {drivers/char/ipmi => include/linux}/kcs_bmc_client.h | 3 +--
>  {drivers/char/ipmi => include/linux}/kcs_bmc_device.h | 3 +--
>  8 files changed, 9 insertions(+), 14 deletions(-)
>  rename {drivers/char/ipmi => include/linux}/kcs_bmc.h (100%)
>  rename {drivers/char/ipmi => include/linux}/kcs_bmc_client.h (97%)
>  rename {drivers/char/ipmi => include/linux}/kcs_bmc_device.h (96%)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> index 8b1161d5194a..d29a8505d6ed 100644
> --- a/drivers/char/ipmi/kcs_bmc.c
> +++ b/drivers/char/ipmi/kcs_bmc.c
> @@ -5,15 +5,13 @@
>   */
>  
>  #include <linux/device.h>
> +#include <linux/kcs_bmc.h>
> +#include <linux/kcs_bmc_client.h>
> +#include <linux/kcs_bmc_device.h>
>  #include <linux/list.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
>  
> -#include "kcs_bmc.h"
> -
> -/* Implement both the device and client interfaces here */
> -#include "kcs_bmc_device.h"
> -#include "kcs_bmc_client.h"
>  
>  /* Record registered devices and drivers */
>  static DEFINE_MUTEX(kcs_bmc_lock);
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 72640da55380..3dc0dfb448f5 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -10,6 +10,7 @@
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/irq.h>
> +#include <linux/kcs_bmc_device.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -21,8 +22,6 @@
>  #include <linux/slab.h>
>  #include <linux/timer.h>
>  
> -#include "kcs_bmc_device.h"
> -
>  
>  #define DEVICE_NAME     "ast-kcs-bmc"
>  
> diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> index cf670e891966..bf1001130a6c 100644
> --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> @@ -8,6 +8,7 @@
>  #include <linux/errno.h>
>  #include <linux/io.h>
>  #include <linux/ipmi_bmc.h>
> +#include <linux/kcs_bmc_client.h>
>  #include <linux/list.h>
>  #include <linux/miscdevice.h>
>  #include <linux/module.h>
> @@ -17,7 +18,6 @@
>  #include <linux/sched.h>
>  #include <linux/slab.h>
>  
> -#include "kcs_bmc_client.h"
>  
>  /* Different phases of the KCS BMC module.
>   *  KCS_PHASE_IDLE:
> diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> index 7961fec56476..160553248a93 100644
> --- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> +++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> @@ -10,6 +10,7 @@
>  #include <linux/errno.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
> +#include <linux/kcs_bmc_device.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -17,7 +18,6 @@
>  #include <linux/regmap.h>
>  #include <linux/slab.h>
>  
> -#include "kcs_bmc_device.h"
>  
>  #define DEVICE_NAME	"npcm-kcs-bmc"
>  #define KCS_CHANNEL_MAX	3
> diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
> index 1793358be782..24df7144a189 100644
> --- a/drivers/char/ipmi/kcs_bmc_serio.c
> +++ b/drivers/char/ipmi/kcs_bmc_serio.c
> @@ -5,12 +5,12 @@
>  #include <linux/device.h>
>  #include <linux/errno.h>
>  #include <linux/list.h>
> +#include <linux/kcs_bmc_client.h>
>  #include <linux/module.h>
>  #include <linux/sched/signal.h>
>  #include <linux/serio.h>
>  #include <linux/slab.h>
>  
> -#include "kcs_bmc_client.h"
>  
>  struct kcs_bmc_serio {
>  	struct list_head entry;
> diff --git a/drivers/char/ipmi/kcs_bmc.h b/include/linux/kcs_bmc.h
> similarity index 100%
> rename from drivers/char/ipmi/kcs_bmc.h
> rename to include/linux/kcs_bmc.h
> diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/include/linux/kcs_bmc_client.h
> similarity index 97%
> rename from drivers/char/ipmi/kcs_bmc_client.h
> rename to include/linux/kcs_bmc_client.h
> index 6fdcde0a7169..f6350c9366dd 100644
> --- a/drivers/char/ipmi/kcs_bmc_client.h
> +++ b/include/linux/kcs_bmc_client.h
> @@ -5,8 +5,7 @@
>  #define __KCS_BMC_CONSUMER_H__
>  
>  #include <linux/irqreturn.h>
> -
> -#include "kcs_bmc.h"
> +#include <linux/kcs_bmc.h>
>  
>  struct kcs_bmc_driver_ops {
>  	int (*add_device)(struct kcs_bmc_device *kcs_bmc);
> diff --git a/drivers/char/ipmi/kcs_bmc_device.h b/include/linux/kcs_bmc_device.h
> similarity index 96%
> rename from drivers/char/ipmi/kcs_bmc_device.h
> rename to include/linux/kcs_bmc_device.h
> index 17c572f25c54..65333b68c0af 100644
> --- a/drivers/char/ipmi/kcs_bmc_device.h
> +++ b/include/linux/kcs_bmc_device.h
> @@ -5,8 +5,7 @@
>  #define __KCS_BMC_DEVICE_H__
>  
>  #include <linux/irqreturn.h>
> -
> -#include "kcs_bmc.h"
> +#include <linux/kcs_bmc.h>
>  
>  struct kcs_bmc_device_ops {
>  	void (*irq_mask_update)(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 enable);



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
