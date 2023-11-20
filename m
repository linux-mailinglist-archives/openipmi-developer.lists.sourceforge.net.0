Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A77037F13A4
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Nov 2023 13:40:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r53Zb-0001Rz-Bt;
	Mon, 20 Nov 2023 12:40:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonathan.cameron@huawei.com>) id 1r53ZZ-0001Rt-Gz
 for openipmi-developer@lists.sourceforge.net;
 Mon, 20 Nov 2023 12:40:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u9ygMxp7dP44etRk+PhH0fC35D+qHWcR+qBzqIoPeuY=; b=gb5p82JeqmnlK8MKbxU1AVtrVP
 t+KlFgTO28ca/saBFdk8eAZhHWrSE+U+VgZ46CnWKbjxNPCluYSuhvixQMVnKDebj+RZlZYhYDfzf
 VMZFlO+D2zbMVNoiZvN6ZR8rSZaH76mNVqxyiS5RBMqaQjF+8IQcPKjl4dO6QNpNI49E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u9ygMxp7dP44etRk+PhH0fC35D+qHWcR+qBzqIoPeuY=; b=Y1Ethw58Ji3jXerKSviYdBYJGY
 KElCiaueLMMtYvwN9hQpyWdb9T3fr4BUZr7V8Dnp0pyXsELVzzax+ojRAIQ8iKlGk3FurEX5NhtyL
 izaYv8ekE136tfd9E4kH23urG5T9JCJ1754ci2s7fTmALFNm5NlR0RReh4BF1jwYjdQc=;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r53ZU-0003R8-Es for openipmi-developer@lists.sourceforge.net;
 Mon, 20 Nov 2023 12:40:15 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SYn5n0cNpz6JBFW;
 Mon, 20 Nov 2023 20:35:09 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Mon, 20 Nov
 2023 12:40:02 +0000
Date: Mon, 20 Nov 2023 12:40:01 +0000
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Message-ID: <20231120124001.00003cbc@Huawei.com>
In-Reply-To: <a015924b542fd35fe84357eebddd14cfae83dace.camel@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-9-andrew@codeconstruct.com.au>
 <20231103150522.00004539@Huawei.com>
 <a015924b542fd35fe84357eebddd14cfae83dace.camel@codeconstruct.com.au>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500004.china.huawei.com (7.191.163.9) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon,
 06 Nov 2023 10:26:38 +1030 Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > On Fri, 2023-11-03 at 15:05 +0000, Jonathan Cameron wrote: > > On
 Fri, 3 Nov 2023 16:45:20 +1030 > > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > > > I ran out of spoons before I could [...] 
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
X-Headers-End: 1r53ZU-0003R8-Es
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

On Mon, 06 Nov 2023 10:26:38 +1030
Andrew Jeffery <andrew@codeconstruct.com.au> wrote:

> On Fri, 2023-11-03 at 15:05 +0000, Jonathan Cameron wrote:
> > On Fri,  3 Nov 2023 16:45:20 +1030
> > Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> >   
> > > I ran out of spoons before I could come up with a better client tracking
> > > scheme back in the original refactoring series:
> > > 
> > > https://lore.kernel.org/all/20210608104757.582199-1-andrew@aj.id.au/
> > > 
> > > Jonathan prodded Konstantin about the issue in a review of Konstantin's
> > > MCTP patches[1], prompting an attempt to clean it up.
> > > 
> > > [1]: https://lore.kernel.org/all/20230929120835.0000108e@Huawei.com/
> > > 
> > > Prevent client modules from having to track their own instances by
> > > requiring they return a pointer to a client object from their
> > > add_device() implementation. We can then track this in the core, and
> > > provide it as the argument to the remove_device() implementation to save
> > > the client module from further work. The usual container_of() pattern
> > > gets the client module access to its private data.
> > > 
> > > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>  
> > 
> > Hi Andrew,
> > 
> > A few comments inline.
> > More generally, whilst this is definitely an improvement I'd have been tempted
> > to make more use of the linux device model for this with the clients added
> > as devices with a parent of the kcs_bmc_device.  That would then allow for
> > simple dependency tracking, binding of individual drivers and all that.
> > 
> > What you have here feels fine though and is a much less invasive change.  
> 
Sorry for slow reply, been traveling.

> Yeah, I had this debate with myself before posting the patches. My
> reasoning for the current approach is that the clients don't typically
> represent a device, rather a protocol implementation that is
> communicated over a KCS device (maybe more like pairing a line
> discipline with a UART). It was unclear to me whether associating a
> `struct device` with a protocol implementation was stretching the
> abstraction a bit, or whether I haven't considered some other
> perspective hard enough - maybe we treat the client as the remote
> device, similar to e.g. a `struct i2c_client`?

That was my thinking.  The protocol is used to talk to someone - the endpoint
(similar to i2c_client) so represent that. If that device is handling multiple
protocols (no idea if that is possible) - that is fine as well, it just becomes
like having multiple i2c_clients in a single package (fairly common for sensors),
or the many other cases where we use a struct device to represent just part
of a larger device that operates largely independently of other parts (or with
well defined boundaries).

Jonathan



> 
> > 
> > Jonathan
> > 
> >   
> > > diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> > > index 98f231f24c26..9fca31f8c7c2 100644
> > > --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> > > +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> > > @@ -71,8 +71,6 @@ enum kcs_ipmi_errors {  
> > 
> > 
> >   
> > > +static struct kcs_bmc_client *
> > > +kcs_bmc_ipmi_add_device(struct kcs_bmc_driver *drv, struct kcs_bmc_device *dev)
> > >  {
> > >  	struct kcs_bmc_ipmi *priv;
> > >  	int rc;
> > >  
> > >  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> > >  	if (!priv)
> > > -		return -ENOMEM;
> > > +		return ERR_PTR(ENOMEM);  
> > As below. I thought it took negatives..  
> 
> I should have double checked that. It requires negatives. Thanks.
> 
> > >  
> > >  	spin_lock_init(&priv->lock);
> > >  	mutex_init(&priv->mutex);
> > >  	init_waitqueue_head(&priv->queue);
> > >  
> > > -	priv->client.dev = kcs_bmc;
> > > -	priv->client.ops = &kcs_bmc_ipmi_client_ops;
> > > +	kcs_bmc_client_init(&priv->client, &kcs_bmc_ipmi_client_ops, drv, dev);
> > >  
> > >  	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
> > > -	priv->miscdev.name = kasprintf(GFP_KERNEL, "%s%u", DEVICE_NAME, kcs_bmc->channel);
> > > +	priv->miscdev.name = kasprintf(GFP_KERNEL, "%s%u", DEVICE_NAME, dev->channel);
> > >  	if (!priv->miscdev.name) {
> > >  		rc = -ENOMEM;  
> > ERR_PTR  
> 
> I converted it to an ERR_PTR in the return after the cleanup_priv
> label. Maybe it's preferable I do the conversion immediately? Easy
> enough to change if you think so.

I'm not that fussed either way.

> 
> > >  		goto cleanup_priv;  
> > 
> > 
> > 
> > ...
> >   
> > > diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
> > > index 0a68c76da955..3cfda39506f6 100644
> > > --- a/drivers/char/ipmi/kcs_bmc_serio.c
> > > +++ b/drivers/char/ipmi/kcs_bmc_serio.c  
> > 
> > ...
> > 
> >   
> > > +static struct kcs_bmc_client *
> > > +kcs_bmc_serio_add_device(struct kcs_bmc_driver *drv, struct kcs_bmc_device *dev)
> > >  {
> > >  	struct kcs_bmc_serio *priv;
> > >  	struct serio *port;
> > > @@ -75,12 +71,12 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
> > >  
> > >  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> > >  	if (!priv)
> > > -		return -ENOMEM;
> > > +		return ERR_PTR(ENOMEM);
> > >  
> > >  	/* Use kzalloc() as the allocation is cleaned up with kfree() via serio_unregister_port() */
> > >  	port = kzalloc(sizeof(*port), GFP_KERNEL);
> > >  	if (!port) {
> > > -		rc = -ENOMEM;
> > > +		rc = ENOMEM;  
> > Why positive?
> > Doesn't ERR_PTR() typically get passed negatives?   
> 
> Ack, as above.
> 
> Thanks for the review,
> 
> Andrew



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
