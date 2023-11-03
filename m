Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EACC7E053D
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 16:05:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qyvju-0007yd-1x;
	Fri, 03 Nov 2023 15:05:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonathan.cameron@huawei.com>) id 1qyvjq-0007yX-HH
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 15:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G0N1SLIM4IMesRKcc82UcH5jiYDEnVpTslkDpNwTEPo=; b=IZHXl11Bh815eiqhYBZGFUL8VW
 xSd0TrGB6plBYUCbpVK9uyW4l27XcfTPzS60JUf8rGxEOmPWtgCqnLd56lmXlZyOayxFgdkO8dDns
 Z7qjRN7jPYffT/1rYDdBQPI7vOZye4MIVIkqi11MQRDukEJLFJXthcfeB9f72zKCpQFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G0N1SLIM4IMesRKcc82UcH5jiYDEnVpTslkDpNwTEPo=; b=iUW5wP2JOXNS4kemo1El6kZGDz
 Huc9KpIk+W71CClyWMTbC9LFBbHRYKFqHUk1JjH0YaX5IQw1UHKYZw5aA3k9NYV5MSjRG31fV/tbL
 mnd2wLQWqLWt4o2qFb1Pz8AnaS7xzI98nOYvM8DTWSdsnWC9JXULDGYNfl3yvqT/1JiI=;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyvjm-0003Mu-On for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 15:05:34 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.206])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SMP8D2v51z6J9ZY;
 Fri,  3 Nov 2023 23:01:16 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 3 Nov
 2023 15:05:23 +0000
Date: Fri, 3 Nov 2023 15:05:22 +0000
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Message-ID: <20231103150522.00004539@Huawei.com>
In-Reply-To: <20231103061522.1268637-9-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-9-andrew@codeconstruct.com.au>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100006.china.huawei.com (7.191.160.224) To
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
 3 Nov 2023 16:45:20 +1030 Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > I ran out of spoons before I could come up with a better client
 tracking > scheme back in the original refactoring series: > >
 https://lore.kernel.org/all/20210608104757.582199-1-andrew@aj.id.au/
 > [...] Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.79.56 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.176.79.56 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qyvjm-0003Mu-On
Subject: Re: [Openipmi-developer] [PATCH 08/10] ipmi: kcs_bmc: Track clients
 in core
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

On Fri,  3 Nov 2023 16:45:20 +1030
Andrew Jeffery <andrew@codeconstruct.com.au> wrote:

> I ran out of spoons before I could come up with a better client tracking
> scheme back in the original refactoring series:
> 
> https://lore.kernel.org/all/20210608104757.582199-1-andrew@aj.id.au/
> 
> Jonathan prodded Konstantin about the issue in a review of Konstantin's
> MCTP patches[1], prompting an attempt to clean it up.
> 
> [1]: https://lore.kernel.org/all/20230929120835.0000108e@Huawei.com/
> 
> Prevent client modules from having to track their own instances by
> requiring they return a pointer to a client object from their
> add_device() implementation. We can then track this in the core, and
> provide it as the argument to the remove_device() implementation to save
> the client module from further work. The usual container_of() pattern
> gets the client module access to its private data.
> 
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>

Hi Andrew,

A few comments inline.
More generally, whilst this is definitely an improvement I'd have been tempted
to make more use of the linux device model for this with the clients added
as devices with a parent of the kcs_bmc_device.  That would then allow for
simple dependency tracking, binding of individual drivers and all that.

What you have here feels fine though and is a much less invasive change.

Jonathan


> diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> index 98f231f24c26..9fca31f8c7c2 100644
> --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> @@ -71,8 +71,6 @@ enum kcs_ipmi_errors {



> +static struct kcs_bmc_client *
> +kcs_bmc_ipmi_add_device(struct kcs_bmc_driver *drv, struct kcs_bmc_device *dev)
>  {
>  	struct kcs_bmc_ipmi *priv;
>  	int rc;
>  
>  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
> -		return -ENOMEM;
> +		return ERR_PTR(ENOMEM);
As below. I thought it took negatives..
>  
>  	spin_lock_init(&priv->lock);
>  	mutex_init(&priv->mutex);
>  	init_waitqueue_head(&priv->queue);
>  
> -	priv->client.dev = kcs_bmc;
> -	priv->client.ops = &kcs_bmc_ipmi_client_ops;
> +	kcs_bmc_client_init(&priv->client, &kcs_bmc_ipmi_client_ops, drv, dev);
>  
>  	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
> -	priv->miscdev.name = kasprintf(GFP_KERNEL, "%s%u", DEVICE_NAME, kcs_bmc->channel);
> +	priv->miscdev.name = kasprintf(GFP_KERNEL, "%s%u", DEVICE_NAME, dev->channel);
>  	if (!priv->miscdev.name) {
>  		rc = -ENOMEM;
ERR_PTR
>  		goto cleanup_priv;



...

> diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
> index 0a68c76da955..3cfda39506f6 100644
> --- a/drivers/char/ipmi/kcs_bmc_serio.c
> +++ b/drivers/char/ipmi/kcs_bmc_serio.c

...


> +static struct kcs_bmc_client *
> +kcs_bmc_serio_add_device(struct kcs_bmc_driver *drv, struct kcs_bmc_device *dev)
>  {
>  	struct kcs_bmc_serio *priv;
>  	struct serio *port;
> @@ -75,12 +71,12 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
>  
>  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
> -		return -ENOMEM;
> +		return ERR_PTR(ENOMEM);
>  
>  	/* Use kzalloc() as the allocation is cleaned up with kfree() via serio_unregister_port() */
>  	port = kzalloc(sizeof(*port), GFP_KERNEL);
>  	if (!port) {
> -		rc = -ENOMEM;
> +		rc = ENOMEM;
Why positive?
Doesn't ERR_PTR() typically get passed negatives? 

>  		goto cleanup_priv;
>  	}
>  
> @@ -88,45 +84,28 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
>  	port->open = kcs_bmc_serio_open;
>  	port->close = kcs_bmc_serio_close;
>  	port->port_data = priv;
> -	port->dev.parent = kcs_bmc->dev;
> +	port->dev.parent = dev->dev;
>  
>  	spin_lock_init(&priv->lock);
>  	priv->port = port;
> -	priv->client.dev = kcs_bmc;
> -	priv->client.ops = &kcs_bmc_serio_client_ops;
>  
> -	spin_lock_irq(&kcs_bmc_serio_instances_lock);
> -	list_add(&priv->entry, &kcs_bmc_serio_instances);
> -	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
> +	kcs_bmc_client_init(&priv->client, &kcs_bmc_serio_client_ops, drv, dev);
>  
>  	serio_register_port(port);
>  
> -	pr_info("Initialised serio client for channel %d\n", kcs_bmc->channel);
> +	pr_info("Initialised serio client for channel %d\n", dev->channel);
>  
> -	return 0;
> +	return &priv->client;
>  
>  cleanup_priv:
>  	kfree(priv);
>  
> -	return rc;
> +	return ERR_PTR(rc);
>  }



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
