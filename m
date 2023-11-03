Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDD47E04E3
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 15:46:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qyvRA-0001Ij-6E;
	Fri, 03 Nov 2023 14:46:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonathan.cameron@huawei.com>) id 1qyvR8-0001Id-SP
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 14:46:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e4KsyIuQtStY4WY9oNiWu2aTkv90tyKEknZEf7bmx1s=; b=kgYbu1IeSnI1Fyd9gXz311Uf5o
 DQl98ggOV3e+eZ2pg4Hx/umlomLv3KlnIylQpE1zq3CghzKOlOpGRX11DJ/XxFfJILx0i7FkDHJuB
 KGJxHvngDTDa7+Uyj0NoLOdI8dI4zf+4SV7RTBoNyOTRPAoKZKWKO2OSnrofSiomr/Uc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e4KsyIuQtStY4WY9oNiWu2aTkv90tyKEknZEf7bmx1s=; b=cKg1jhktgGG/t1n24xSCdmtsuy
 jEwXRh4XIgxcQngFMTM3OG/OUhcFr53Ec8JbCEoTxc68i1ubQS5U8/UkxlSlZB01GsSGfuSb4Nz9P
 1tOyngg73Ut8qoAdbhzX4qJ8PJ1NXSgQ7EOWuG/VjL4QDCSsoDlX3y7uUBogX3vjcHdQ=;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyvR2-002Iqo-81 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 14:46:13 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.226])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SMNnX3Tk0z6K8hg;
 Fri,  3 Nov 2023 22:45:04 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 3 Nov
 2023 14:45:59 +0000
Date: Fri, 3 Nov 2023 14:45:59 +0000
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Message-ID: <20231103144559.00003faf@Huawei.com>
In-Reply-To: <20231103061522.1268637-7-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-7-andrew@codeconstruct.com.au>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100002.china.huawei.com (7.191.160.241) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri,
 3 Nov 2023 16:45:18 +1030 Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > Consolidate several necessary allocations into one to reduce the
 number > of possible error paths. > > Signed-off-by: Andrew Jeffery
 <andrew@codeconstruct.com.au>
 Gets rid of some of the devm_kfree( [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.176.79.56 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.79.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qyvR2-002Iqo-81
Subject: Re: [Openipmi-developer] [PATCH 06/10] ipmi: kcs_bmc: Integrate
 buffers into driver struct
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

On Fri,  3 Nov 2023 16:45:18 +1030
Andrew Jeffery <andrew@codeconstruct.com.au> wrote:

> Consolidate several necessary allocations into one to reduce the number
> of possible error paths.
> 
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
Gets rid of some of the devm_kfree() fun, so I'm in favor of the change :)

One trivial comment inline.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 25 ++++++++-----------------
>  1 file changed, 8 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> index 712a80c27060..45ac930172ec 100644
> --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> @@ -66,6 +66,10 @@ enum kcs_ipmi_errors {
>  	KCS_UNSPECIFIED_ERROR       = 0xFF
>  };
>  
> +#define DEVICE_NAME "ipmi-kcs"
> +#define KCS_MSG_BUFSIZ    1000
> +#define KCS_ZERO_DATA     0
> +
>  struct kcs_bmc_ipmi {
>  	struct list_head entry;
>  
> @@ -79,24 +83,18 @@ struct kcs_bmc_ipmi {
>  	wait_queue_head_t queue;
>  	bool data_in_avail;
>  	int  data_in_idx;
> -	u8  *data_in;
> +	u8   data_in[KCS_MSG_BUFSIZ];
>  
>  	int  data_out_idx;
>  	int  data_out_len;
> -	u8  *data_out;
> +	u8   data_out[KCS_MSG_BUFSIZ];
>  
>  	struct mutex mutex;
> -	u8 *kbuffer;
> +	u8 kbuffer[KCS_MSG_BUFSIZ];
>  
>  	struct miscdevice miscdev;
>  };
>  
> -#define DEVICE_NAME "ipmi-kcs"
> -
> -#define KCS_MSG_BUFSIZ    1000
> -
> -#define KCS_ZERO_DATA     0
> -
>  /* IPMI 2.0 - Table 9-1, KCS Interface Status Register Bits */
>  #define KCS_STATUS_STATE(state) (state << 6)
>  #define KCS_STATUS_STATE_MASK   GENMASK(7, 6)
> @@ -478,19 +476,15 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
>  
>  	spin_lock_init(&priv->lock);
>  	mutex_init(&priv->mutex);
> -
Unrelated change...

>  	init_waitqueue_head(&priv->queue);
>  
>  	priv->client.dev = kcs_bmc;
>  	priv->client.ops = &kcs_bmc_ipmi_client_ops;
> -	priv->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
> -	priv->data_out = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
> -	priv->kbuffer = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
>  
>  	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
>  	priv->miscdev.name = devm_kasprintf(kcs_bmc->dev, GFP_KERNEL, "%s%u", DEVICE_NAME,
>  					   kcs_bmc->channel);
> -	if (!priv->data_in || !priv->data_out || !priv->kbuffer || !priv->miscdev.name)
> +	if (!priv->miscdev.name)
>  		return -EINVAL;
>  
>  	priv->miscdev.fops = &kcs_bmc_ipmi_fops;
> @@ -529,9 +523,6 @@ static void kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
>  
>  	misc_deregister(&priv->miscdev);
>  	kcs_bmc_disable_device(&priv->client);
> -	devm_kfree(kcs_bmc->dev, priv->kbuffer);
> -	devm_kfree(kcs_bmc->dev, priv->data_out);
> -	devm_kfree(kcs_bmc->dev, priv->data_in);
>  	devm_kfree(kcs_bmc->dev, priv);
>  }
>  



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
