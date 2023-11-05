Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E24777E180F
	for <lists+openipmi-developer@lfdr.de>; Mon,  6 Nov 2023 00:57:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qzmz9-000873-4k;
	Sun, 05 Nov 2023 23:56:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qzmz5-00086x-Ig
 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 23:56:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QFNVMP6dED+kPw+11hk5uky5JXNxNuLL67bKcqe7dkE=; b=S0o6+T5hY4A7qhFm+bmJzzFxS0
 87g0dRexhPD3Qr+1rxVDNISPir01eVu5z0J6vyxnpVU0auP/0aBZ4CzgG4ahaRkt54Hk7SNTdjX0G
 oN1ACjNXxoFyE1RGo8+nS79xNcPGY45qjc3xgWOEz7p1a8EqslPh8zsmMIDJO6Rv2gBY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QFNVMP6dED+kPw+11hk5uky5JXNxNuLL67bKcqe7dkE=; b=frohrkZEyVNLwPISpd8jbsULKx
 6nv5m9nSrubj1v9Lzr5gNAsPdy7rnoDvDQCPAmRpiVhkznC+elUKjFNLqLKz893sK8JIYG5SSs2iQ
 HP5DtaKPkDbyQIJMhdMK7tLdU2RJM9IOe94hY6UhjpgJaZoJ7ThLy4uXSTl5Ascad/4I=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qzmz1-00065f-QJ for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 23:56:51 +0000
Received: from [192.168.68.112]
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id EEADE20075;
 Mon,  6 Nov 2023 07:56:39 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1699228600;
 bh=QFNVMP6dED+kPw+11hk5uky5JXNxNuLL67bKcqe7dkE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=JM1hi779FDp/H7CCa8PanzJEXg14a9Ih5wIprldlHEc0w5UI1xseI8qlypTuIh6Qq
 AS0XCUdifw4EeBqhBcpPoteGUDxapoagwwB50E4QH6ksDPYgzzLcK47pHpdQzwjr+2
 QxQbKavAlwUvv5x0jfQLl+d9YXv9Yj0DykbV38h2za3H/QDUVwFjPDNOxIwxhvlFY1
 8SFEBqm8hkTzbjGGi0QOA2DfFoTzDckHwiKDkR7PH7NHA0wRBc0KcaoSoJCkrJW2c1
 zJ1ZJOBqrrCDe1rvsrLtK+IP0MgtVq3ylBjzieUhyX8FZdsq/OJHWmlEwQTxMmArpX
 j2VS3dp1vFsAA==
Message-ID: <a015924b542fd35fe84357eebddd14cfae83dace.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Date: Mon, 06 Nov 2023 10:26:38 +1030
In-Reply-To: <20231103150522.00004539@Huawei.com>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-9-andrew@codeconstruct.com.au>
 <20231103150522.00004539@Huawei.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2023-11-03 at 15:05 +0000, Jonathan Cameron wrote:
 > On Fri,
 3 Nov 2023 16:45:20 +1030 > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > I ran out of spoons before I could come up wi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qzmz1-00065f-QJ
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
Cc: jk@codeconstruct.com.au, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, minyard@acm.org, aladyshev22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 2023-11-03 at 15:05 +0000, Jonathan Cameron wrote:
> On Fri,  3 Nov 2023 16:45:20 +1030
> Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> 
> > I ran out of spoons before I could come up with a better client tracking
> > scheme back in the original refactoring series:
> > 
> > https://lore.kernel.org/all/20210608104757.582199-1-andrew@aj.id.au/
> > 
> > Jonathan prodded Konstantin about the issue in a review of Konstantin's
> > MCTP patches[1], prompting an attempt to clean it up.
> > 
> > [1]: https://lore.kernel.org/all/20230929120835.0000108e@Huawei.com/
> > 
> > Prevent client modules from having to track their own instances by
> > requiring they return a pointer to a client object from their
> > add_device() implementation. We can then track this in the core, and
> > provide it as the argument to the remove_device() implementation to save
> > the client module from further work. The usual container_of() pattern
> > gets the client module access to its private data.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> 
> Hi Andrew,
> 
> A few comments inline.
> More generally, whilst this is definitely an improvement I'd have been tempted
> to make more use of the linux device model for this with the clients added
> as devices with a parent of the kcs_bmc_device.  That would then allow for
> simple dependency tracking, binding of individual drivers and all that.
> 
> What you have here feels fine though and is a much less invasive change.

Yeah, I had this debate with myself before posting the patches. My
reasoning for the current approach is that the clients don't typically
represent a device, rather a protocol implementation that is
communicated over a KCS device (maybe more like pairing a line
discipline with a UART). It was unclear to me whether associating a
`struct device` with a protocol implementation was stretching the
abstraction a bit, or whether I haven't considered some other
perspective hard enough - maybe we treat the client as the remote
device, similar to e.g. a `struct i2c_client`?

> 
> Jonathan
> 
> 
> > diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> > index 98f231f24c26..9fca31f8c7c2 100644
> > --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> > +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> > @@ -71,8 +71,6 @@ enum kcs_ipmi_errors {
> 
> 
> 
> > +static struct kcs_bmc_client *
> > +kcs_bmc_ipmi_add_device(struct kcs_bmc_driver *drv, struct kcs_bmc_device *dev)
> >  {
> >  	struct kcs_bmc_ipmi *priv;
> >  	int rc;
> >  
> >  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> >  	if (!priv)
> > -		return -ENOMEM;
> > +		return ERR_PTR(ENOMEM);
> As below. I thought it took negatives..

I should have double checked that. It requires negatives. Thanks.

> >  
> >  	spin_lock_init(&priv->lock);
> >  	mutex_init(&priv->mutex);
> >  	init_waitqueue_head(&priv->queue);
> >  
> > -	priv->client.dev = kcs_bmc;
> > -	priv->client.ops = &kcs_bmc_ipmi_client_ops;
> > +	kcs_bmc_client_init(&priv->client, &kcs_bmc_ipmi_client_ops, drv, dev);
> >  
> >  	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
> > -	priv->miscdev.name = kasprintf(GFP_KERNEL, "%s%u", DEVICE_NAME, kcs_bmc->channel);
> > +	priv->miscdev.name = kasprintf(GFP_KERNEL, "%s%u", DEVICE_NAME, dev->channel);
> >  	if (!priv->miscdev.name) {
> >  		rc = -ENOMEM;
> ERR_PTR

I converted it to an ERR_PTR in the return after the cleanup_priv
label. Maybe it's preferable I do the conversion immediately? Easy
enough to change if you think so.

> >  		goto cleanup_priv;
> 
> 
> 
> ...
> 
> > diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
> > index 0a68c76da955..3cfda39506f6 100644
> > --- a/drivers/char/ipmi/kcs_bmc_serio.c
> > +++ b/drivers/char/ipmi/kcs_bmc_serio.c
> 
> ...
> 
> 
> > +static struct kcs_bmc_client *
> > +kcs_bmc_serio_add_device(struct kcs_bmc_driver *drv, struct kcs_bmc_device *dev)
> >  {
> >  	struct kcs_bmc_serio *priv;
> >  	struct serio *port;
> > @@ -75,12 +71,12 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
> >  
> >  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> >  	if (!priv)
> > -		return -ENOMEM;
> > +		return ERR_PTR(ENOMEM);
> >  
> >  	/* Use kzalloc() as the allocation is cleaned up with kfree() via serio_unregister_port() */
> >  	port = kzalloc(sizeof(*port), GFP_KERNEL);
> >  	if (!port) {
> > -		rc = -ENOMEM;
> > +		rc = ENOMEM;
> Why positive?
> Doesn't ERR_PTR() typically get passed negatives? 

Ack, as above.

Thanks for the review,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
