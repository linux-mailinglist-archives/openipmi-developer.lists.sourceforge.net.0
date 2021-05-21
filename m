Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A7838CC2F
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 May 2021 19:30:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lk8ya-000236-Qu; Fri, 21 May 2021 17:30:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lk8yZ-00022z-To
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 17:30:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3cHQshoSRpML0Ek6dpsO2JucuH3tmTIJE0nhspmFbUc=; b=hgwRX8nWGgNw6YjbhtV8AJz+qr
 nLLHJVY38HhfLLnTK+I4dheL59eRPAYiy++TgriwJNBH7snaczBVC/ecEEMpYNVR76h21xXpZE5Zz
 Gr8TG8jScphODmFH2CeYn47grF0iGfxjie36C+bSk2GkYg2PehdbbAzIFTzf1Y46roMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3cHQshoSRpML0Ek6dpsO2JucuH3tmTIJE0nhspmFbUc=; b=FnqiyMXNUXVk+P68YvFQDaZAxL
 cRLw6ZWNjkA2ZeEqac6IOwO1I0EeO5OJlfJn+sF2IFY4jUiB5xDMnQlkGN/RtligK5JZg0tkldwGK
 IANqLWxbKuNkkas8EKEjpdSSqOhKgq9x/Kb+SnbkL5YZ//CCh2sOSdyofI7jrfcTm91Y=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lk8yW-0007UA-5A
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 17:30:21 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 i23-20020a9d68d70000b02902dc19ed4c15so18766271oto.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 21 May 2021 10:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=3cHQshoSRpML0Ek6dpsO2JucuH3tmTIJE0nhspmFbUc=;
 b=U8Xx32Z9nJRtwl0YWSnCCX0Zz8T4me4pKes/z19oTTrw9uDHwJQ2EoiHlhVz16ZrvE
 0JgbouNGBTimn1XQHoXel4YOqaRd66kiiatXDnP6iIr0zc1ALRmwt/vUSUrUB+oUwBVQ
 Aq6FgXa5WhitobphM1xTDoNHMfxsaropm1eqC13wgwcDKnk/6USk2HicrhtRLZd89XB5
 4Z8heUrFQqheRprFQo3zIgWLPxdOAetR0FRq6BT7buUdKlFbCwGx5p45kgnbep/SzfCO
 orLy8mFJCqm+2c/JZaUFhwKBhIKbEEya1iBOptjBmRG7D/hBBVkQTncVaW6tpTCmmo6e
 dZ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=3cHQshoSRpML0Ek6dpsO2JucuH3tmTIJE0nhspmFbUc=;
 b=fPG9okfGunwprxWd1E3j+g7KG5OqUGm9ZKNPNwher56MTq06kLx6hAsYkm+HUS9/Ti
 Fpv4YVvByVukFWJoNhz3YzxXKGJRp06DTWzUNLCUfFEuyAAV1581Blbksr4EJTDXt+/5
 K+C5VGVZY3PBUJNqL08tfCgTX/RhzVSfCrJVBx+VQ2TYzwkwBAj3GHs1Bw8bqUc1RJOT
 /CtymLwDsmagQ1LljrRnh9Tfn1SmWsX895p4DoJ281QKxisH9+4/ZC42qfdjlMCCdFIw
 gcEu/GQcj/pfq7/oPJWdFyQbeoLf9BcsUAagpkWomP3ZE0Je8ezs4R29zEeNz9TknwGO
 AP9g==
X-Gm-Message-State: AOAM533Po2SzlJN5Z43ghlOhA3dXEqDNi/A/PHgi47I4DNDROnBsDJe6
 lMmqUppuncX8/2BKOdQpyg==
X-Google-Smtp-Source: ABdhPJx0oSMzcOmTN5MQp5noq4fPcvpmE8RyTgX1v71H/r0d2w7fD0hm22YN8n1WZ0UC1Q1CrAEr6w==
X-Received: by 2002:a9d:6548:: with SMTP id q8mr9359075otl.311.1621618210635; 
 Fri, 21 May 2021 10:30:10 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id a18sm1013020oiy.24.2021.05.21.10.30.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 10:30:10 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9c8f:21cb:3961:b550])
 by serve.minyard.net (Postfix) with ESMTPSA id 9F583180105;
 Fri, 21 May 2021 17:30:08 +0000 (UTC)
Date: Fri, 21 May 2021 12:30:07 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210521173007.GJ2921206@minyard.net>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <20210510054213.1610760-11-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210510054213.1610760-11-andrew@aj.id.au>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.48 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lk8yW-0007UA-5A
Subject: Re: [Openipmi-developer] [PATCH v3 10/16] ipmi: kcs_bmc: Don't
 enforce single-open policy in the kernel
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
Reply-To: minyard@acm.org
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org, tali.perry1@gmail.com,
 robh+dt@kernel.org, arnd@arndb.de, openipmi-developer@lists.sourceforge.net,
 zweiss@equinix.com, chiawei_wang@aspeedtech.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, May 10, 2021 at 03:12:07PM +0930, Andrew Jeffery wrote:
> Soon it will be possible for one KCS device to have multiple associated
> chardevs exposed to userspace (for IPMI and raw-style access). However,
> don't prevent userspace from:
> 
> 1. Opening more than one chardev at a time, or
> 2. Opening the same chardev more than once.
> 
> System behaviour is undefined for both classes of multiple access, so
> userspace must manage itself accordingly.

I don't understand why you want to allow this.  If the second open won't
work right, then why allow it?  Why remove code that causes the second
open to error?

-corey

> 
> The implementation delivers IBF and OBF events to the first chardev
> client to associate with the KCS device. An open on a related chardev
> cannot associate its client with the KCS device and so will not
> receive notification of events. However, any fd on any chardev may race
> their accesses to the data and status registers.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  drivers/char/ipmi/kcs_bmc.c         | 34 ++++++++++-------------------
>  drivers/char/ipmi/kcs_bmc_aspeed.c  |  3 +--
>  drivers/char/ipmi/kcs_bmc_npcm7xx.c |  3 +--
>  3 files changed, 14 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> index 7081541bb6ce..ad9ff13ba831 100644
> --- a/drivers/char/ipmi/kcs_bmc.c
> +++ b/drivers/char/ipmi/kcs_bmc.c
> @@ -55,24 +55,12 @@ EXPORT_SYMBOL(kcs_bmc_update_status);
>  irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc)
>  {
>  	struct kcs_bmc_client *client;
> -	irqreturn_t rc;
> +	irqreturn_t rc = IRQ_NONE;
>  
>  	spin_lock(&kcs_bmc->lock);
>  	client = kcs_bmc->client;
> -	if (client) {
> +	if (client)
>  		rc = client->ops->event(client);
> -	} else {
> -		u8 status;
> -
> -		status = kcs_bmc_read_status(kcs_bmc);
> -		if (status & KCS_BMC_STR_IBF) {
> -			/* Ack the event by reading the data */
> -			kcs_bmc_read_data(kcs_bmc);
> -			rc = IRQ_HANDLED;
> -		} else {
> -			rc = IRQ_NONE;
> -		}
> -	}
>  	spin_unlock(&kcs_bmc->lock);
>  
>  	return rc;
> @@ -81,26 +69,28 @@ EXPORT_SYMBOL(kcs_bmc_handle_event);
>  
>  int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
>  {
> -	int rc;
> -
>  	spin_lock_irq(&kcs_bmc->lock);
> -	if (kcs_bmc->client) {
> -		rc = -EBUSY;
> -	} else {
> +	if (!kcs_bmc->client) {
> +		u8 mask = KCS_BMC_EVENT_TYPE_IBF;
> +
>  		kcs_bmc->client = client;
> -		rc = 0;
> +		kcs_bmc_update_event_mask(kcs_bmc, mask, mask);
>  	}
>  	spin_unlock_irq(&kcs_bmc->lock);
>  
> -	return rc;
> +	return 0;
>  }
>  EXPORT_SYMBOL(kcs_bmc_enable_device);
>  
>  void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
>  {
>  	spin_lock_irq(&kcs_bmc->lock);
> -	if (client == kcs_bmc->client)
> +	if (client == kcs_bmc->client) {
> +		u8 mask = KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE;
> +
> +		kcs_bmc_update_event_mask(kcs_bmc, mask, 0);
>  		kcs_bmc->client = NULL;
> +	}
>  	spin_unlock_irq(&kcs_bmc->lock);
>  }
>  EXPORT_SYMBOL(kcs_bmc_disable_device);
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 8b223e58d900..8a0b1e18e945 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -414,8 +414,7 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
>  
>  	platform_set_drvdata(pdev, priv);
>  
> -	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
> -				   KCS_BMC_EVENT_TYPE_IBF);
> +	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
>  	aspeed_kcs_enable_channel(kcs_bmc, true);
>  
>  	kcs_bmc_add_device(&priv->kcs_bmc);
> diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> index f8b7162fb830..ab4a8caf1270 100644
> --- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> +++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> @@ -202,8 +202,7 @@ static int npcm7xx_kcs_probe(struct platform_device *pdev)
>  	if (rc)
>  		return rc;
>  
> -	npcm7xx_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
> -				    KCS_BMC_EVENT_TYPE_IBF);
> +	npcm7xx_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
>  	npcm7xx_kcs_enable_channel(kcs_bmc, true);
>  
>  	pr_info("channel=%u idr=0x%x odr=0x%x str=0x%x\n",
> -- 
> 2.27.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
