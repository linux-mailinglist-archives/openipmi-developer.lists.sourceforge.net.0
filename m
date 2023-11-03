Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C087E04D3
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 15:40:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qyvLh-0004jQ-5C;
	Fri, 03 Nov 2023 14:40:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonathan.cameron@huawei.com>) id 1qyvLe-0004jK-Vd
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 14:40:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=INUm/t/rI81nRVFE2aesoqQRd1aItumdglA9onfMsgY=; b=Kdsac/LcDYL8swlI31BpgguAmb
 MIeAaWObMBllWEJHPLA0vlf5bORKEulEfXem2ov4aj6+SCj8sRen5P2wY4cRKC5r0cwUmmxSIoH6j
 PrcbXYVKQwHZ+uM5gPZxBQp752ki8U8jTKnE5l3Px+Jj4VwSZgF+rySNVNh8eaNalPBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=INUm/t/rI81nRVFE2aesoqQRd1aItumdglA9onfMsgY=; b=lM1QlRNeLl4sOJKAXShI15QsB1
 KA9WwdIQ3Cx4uMlW4P7nwyUlit3cPNq/OPQp2wufyP0RdRBQZPzWZ7wbyDN28PqydkdwYfgz94cn1
 piAopyscrJTVgGDIxJcdoLgkMaEs/muBb2cZXz503g4eJLhvjuoJDfDci/Oj9AWMA+F4=;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyvLe-002IQH-Sp for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 14:40:35 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SMNg80Rvpz67y8R;
 Fri,  3 Nov 2023 22:39:32 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 3 Nov
 2023 14:40:27 +0000
Date: Fri, 3 Nov 2023 14:40:26 +0000
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Message-ID: <20231103144026.00001fbc@Huawei.com>
In-Reply-To: <20231103061522.1268637-4-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-4-andrew@codeconstruct.com.au>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100002.china.huawei.com (7.191.160.241) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri,
 3 Nov 2023 16:45:15 +1030 Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > There were no users outside the subsystem core, so let's not expose
 it. > > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au> Is it
 worth having the wrapper? 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.79.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.176.79.56 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qyvLe-002IQH-Sp
Subject: Re: [Openipmi-developer] [PATCH 03/10] ipmi: kcs_bmc: Make
 kcs_bmc_update_event_mask() static
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
Cc: jk@codeconstruct.com.au, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, minyard@acm.org, aladyshev22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri,  3 Nov 2023 16:45:15 +1030
Andrew Jeffery <andrew@codeconstruct.com.au> wrote:

> There were no users outside the subsystem core, so let's not expose it.
> 
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
Is it worth having the wrapper?

I guess all the other cases do have wrappers (even if that's because
they continue to be exported) so fair enough.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> ---
>  drivers/char/ipmi/kcs_bmc.c        | 11 +++++------
>  drivers/char/ipmi/kcs_bmc_client.h |  2 --
>  2 files changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> index a429d9f8a7bf..1a827db8a465 100644
> --- a/drivers/char/ipmi/kcs_bmc.c
> +++ b/drivers/char/ipmi/kcs_bmc.c
> @@ -68,6 +68,11 @@ irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc)
>  }
>  EXPORT_SYMBOL(kcs_bmc_handle_event);
>  
> +static void kcs_bmc_update_event_mask(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 events)
> +{
> +	kcs_bmc->ops->irq_mask_update(kcs_bmc, mask, events);
> +}
> +
>  int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
>  {
>  	int rc;
> @@ -178,12 +183,6 @@ void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv)
>  }
>  EXPORT_SYMBOL(kcs_bmc_unregister_driver);
>  
> -void kcs_bmc_update_event_mask(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 events)
> -{
> -	kcs_bmc->ops->irq_mask_update(kcs_bmc, mask, events);
> -}
> -EXPORT_SYMBOL(kcs_bmc_update_event_mask);
> -
>  MODULE_LICENSE("GPL v2");
>  MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
>  MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
> diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
> index 6fdcde0a7169..814ad8e052ef 100644
> --- a/drivers/char/ipmi/kcs_bmc_client.h
> +++ b/drivers/char/ipmi/kcs_bmc_client.h
> @@ -35,8 +35,6 @@ void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv);
>  int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
>  void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
>  
> -void kcs_bmc_update_event_mask(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 events);
> -
>  u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc);
>  void kcs_bmc_write_data(struct kcs_bmc_device *kcs_bmc, u8 data);
>  u8 kcs_bmc_read_status(struct kcs_bmc_device *kcs_bmc);



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
