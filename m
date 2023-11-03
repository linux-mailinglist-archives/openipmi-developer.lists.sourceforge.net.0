Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6537E0502
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 15:51:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qyvWS-0004s8-Ni;
	Fri, 03 Nov 2023 14:51:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonathan.cameron@huawei.com>) id 1qyvWQ-0004s1-Ht
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 14:51:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q4pErFwOJn2NZ7RDumKkAhalGK7kZRcL01DLALdNoYk=; b=FxqMIqCpn/PxnAVMKB0xAg94Kh
 ZaaZVDGgq+uXU0E7GLYDW7tuW9M9STYIGmQKWH/75TaokWB3QVyS6IeYPhk6IJv3bz22PlVO6XrRI
 Ox4pNAQCH5NEdgiI6dpw3USw6OF4hHf9MNib7tKZBM7LlgMXoFNG5QJyEaxkX3YeaUU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q4pErFwOJn2NZ7RDumKkAhalGK7kZRcL01DLALdNoYk=; b=MyWLZjqxwdcrdI8x4yvF0RNVZ7
 wfpRbTOIlE5QmnYgNcY0hxUrulfDGv9H7n2tx/eSh90DB64H4RBFh6S6ECMePXDxQ6HIQSOBjk/Tg
 LoTLvkWo4twcqKqMg2iPtX7AQgieH//MWRvBZ4Lek2ttUV9ubWzxMiWxQNOZNG56NRcA=;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyvWM-0002V3-Mt for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 14:51:43 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.207])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SMNvv6KlYz6K7Gp;
 Fri,  3 Nov 2023 22:50:35 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 3 Nov
 2023 14:51:30 +0000
Date: Fri, 3 Nov 2023 14:51:29 +0000
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Message-ID: <20231103145129.000067d8@Huawei.com>
In-Reply-To: <20231103061522.1268637-8-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-8-andrew@codeconstruct.com.au>
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
 3 Nov 2023 16:45:19 +1030 Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > KCS client modules may be removed by actions unrelated to KCS
 devices.
 > As usual, removing a KCS client module requires unbinding all client >
 instances from the underlying devices to prevent furth [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.79.56 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.176.79.56 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qyvWM-0002V3-Mt
Subject: Re: [Openipmi-developer] [PATCH 07/10] ipmi: kcs_bmc: Disassociate
 client from device lifetimes
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

On Fri,  3 Nov 2023 16:45:19 +1030
Andrew Jeffery <andrew@codeconstruct.com.au> wrote:

> KCS client modules may be removed by actions unrelated to KCS devices.
> As usual, removing a KCS client module requires unbinding all client
> instances from the underlying devices to prevent further use of the code.
> 
> Previously, KCS client resource lifetimes were tied to the underlying
> KCS device instance with the use of `devm_k[mz]alloc()` APIs. This
> requires the use of `devm_free()` as a consequence. It's necessary to
> scrutinise use of explicit `devm_free()`s because they generally
> indicate there's a concerning corner-case in play, but that's not really
> the case here. Switch to explicit kmalloc()/kfree() to align
> expectations with the intent of the code.
> 
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
Bit more unrelated white space stuff in here that ideally wouldn't be there.
Otherwise makes sense to me.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 28 ++++++++++++++++++---------
>  drivers/char/ipmi/kcs_bmc_serio.c     | 20 ++++++++++++-------
>  2 files changed, 32 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> index 45ac930172ec..98f231f24c26 100644
> --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> @@ -470,7 +470,7 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
>  	struct kcs_bmc_ipmi *priv;
>  	int rc;
>  
> -	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
> +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
>  		return -ENOMEM;
>  
> @@ -482,26 +482,35 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
>  	priv->client.ops = &kcs_bmc_ipmi_client_ops;
>  
>  	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
> -	priv->miscdev.name = devm_kasprintf(kcs_bmc->dev, GFP_KERNEL, "%s%u", DEVICE_NAME,
> -					   kcs_bmc->channel);
> -	if (!priv->miscdev.name)
> -		return -EINVAL;
> +	priv->miscdev.name = kasprintf(GFP_KERNEL, "%s%u", DEVICE_NAME, kcs_bmc->channel);
> +	if (!priv->miscdev.name) {
> +		rc = -ENOMEM;
> +		goto cleanup_priv;
> +	}
>  
>  	priv->miscdev.fops = &kcs_bmc_ipmi_fops;
>  
>  	rc = misc_register(&priv->miscdev);
>  	if (rc) {
> -		dev_err(kcs_bmc->dev, "Unable to register device: %d\n", rc);
> -		return rc;
> +		pr_err("Unable to register device: %d\n", rc);
> +		goto cleanup_miscdev_name;
>  	}
>  
>  	spin_lock_irq(&kcs_bmc_ipmi_instances_lock);
>  	list_add(&priv->entry, &kcs_bmc_ipmi_instances);
>  	spin_unlock_irq(&kcs_bmc_ipmi_instances_lock);
>  
> -	dev_info(kcs_bmc->dev, "Initialised IPMI client for channel %d", kcs_bmc->channel);
> +	pr_info("Initialised IPMI client for channel %d\n", kcs_bmc->channel);
>  
>  	return 0;
> +
> +cleanup_miscdev_name:
> +	kfree(priv->miscdev.name);
> +
> +cleanup_priv:
> +	kfree(priv);
> +
> +	return rc;
>  }
>  
>  static void kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
> @@ -523,7 +532,8 @@ static void kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
>  
>  	misc_deregister(&priv->miscdev);
>  	kcs_bmc_disable_device(&priv->client);
> -	devm_kfree(kcs_bmc->dev, priv);
> +	kfree(priv->miscdev.name);
> +	kfree(priv);
>  }
>  
>  static const struct kcs_bmc_driver_ops kcs_bmc_ipmi_driver_ops = {
> diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
> index 713e847bbc4e..0a68c76da955 100644
> --- a/drivers/char/ipmi/kcs_bmc_serio.c
> +++ b/drivers/char/ipmi/kcs_bmc_serio.c
> @@ -71,15 +71,18 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
>  {
>  	struct kcs_bmc_serio *priv;
>  	struct serio *port;
> +	int rc;
>  
> -	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
> +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
>  		return -ENOMEM;
>  
>  	/* Use kzalloc() as the allocation is cleaned up with kfree() via serio_unregister_port() */
>  	port = kzalloc(sizeof(*port), GFP_KERNEL);
> -	if (!port)
> -		return -ENOMEM;
> +	if (!port) {
> +		rc = -ENOMEM;
> +		goto cleanup_priv;
> +	}
>  
>  	port->id.type = SERIO_8042;
>  	port->open = kcs_bmc_serio_open;
> @@ -98,9 +101,14 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
>  
>  	serio_register_port(port);
>  
> -	dev_info(kcs_bmc->dev, "Initialised serio client for channel %d", kcs_bmc->channel);
> +	pr_info("Initialised serio client for channel %d\n", kcs_bmc->channel);
>  
>  	return 0;
> +
> +cleanup_priv:
> +	kfree(priv);
> +
> +	return rc;
>  }
>  
>  static void kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
> @@ -122,11 +130,9 @@ static void kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
>  
>  	/* kfree()s priv->port via put_device() */
>  	serio_unregister_port(priv->port);
> -
>  	/* Ensure the IBF IRQ is disabled if we were the active client */
>  	kcs_bmc_disable_device(&priv->client);
> -
> -	devm_kfree(priv->client.dev->dev, priv);
> +	kfree(priv);
>  }
>  
>  static const struct kcs_bmc_driver_ops kcs_bmc_serio_driver_ops = {



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
