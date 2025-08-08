Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8F6B1EF8F
	for <lists+openipmi-developer@lfdr.de>; Fri,  8 Aug 2025 22:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8uGhaf1gFEjvf08MqZsOPANHkg/Ojv7dCrGkBXxQ1Rk=; b=lQCtqJb5OipAGn2XQ8OO5vH2TG
	aAbRvSYQuC8/EviYoXTGVGCBswoOV1sUXOR2Y/OTRQu3xap4whbpY0tBK9bmq3avGoQEW74Bg1mpZ
	xZeMELchh8tW54vSSiT7JkOwDchrOXNoNi6C8Kw9Tgkr+JUwudLz/UTlhBQzBZkhqLfo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ukTqp-0001or-37;
	Fri, 08 Aug 2025 20:38:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <fred@cloudflare.com>) id 1ukTqn-0001oj-Sr
 for openipmi-developer@lists.sourceforge.net;
 Fri, 08 Aug 2025 20:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g3cL4173TD/GE23drUNUHmAMHH2CpGpaopBf0wJi8Eg=; b=YwsBebRIwRU4o0QDk2Gy81SkVl
 00uRFeL60u0/yuwy/1LxO3k26ma/jxz9XfqPaXJhsd0qVADYyH7IqZWlOv3f42Hwz2zXX1tXvIbdN
 giq4NqP1dkw6fkGIEhARNvlFyGycXABxGJa4lPIdXjnOMaV1W7q1mLNrRhKGlr4b4Y4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g3cL4173TD/GE23drUNUHmAMHH2CpGpaopBf0wJi8Eg=; b=bp3g4KD2TPJvG8aINCdYv1aYD8
 /MkQnVY+omlZhw/LtlbZirsI1Sg2NIuVNoOtLgeHlXkMqqcjRgZImw1vpfEP6Tqabj2LnEUoNiN9w
 LLsLWfykktOhXq/EZCB870hv8QWs4LzWrzHDGFbbaUGClVu0pb77CLy72DbKcpAqFyMc=;
Received: from mail-io1-f41.google.com ([209.85.166.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ukTqm-0001Za-RN for openipmi-developer@lists.sourceforge.net;
 Fri, 08 Aug 2025 20:38:05 +0000
Received: by mail-io1-f41.google.com with SMTP id
 ca18e2360f4ac-8818a5ba63fso75697139f.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 08 Aug 2025 13:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1754685474; x=1755290274;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=g3cL4173TD/GE23drUNUHmAMHH2CpGpaopBf0wJi8Eg=;
 b=HwK05mZ8EDvqNsKdx9Yo9zkDblVnNrEVrym3GacTiETS6KtKwrD36M68WqkXwyJ3Vs
 hkLJlh9EWhzTbawp1y4W3iov4jOZ9HSed1qydeoIRyZP9TCs54Auha4R3LVgdtttfFlS
 KhebFE5Qc6iQVDPA22DIHIVallWh1hjP3GYw3N8uxLV0GdqA9zcI0YL8hbKcq6JbnGe/
 lz7ZayrcsceNmoDApHea6KmL7+k1++30H/SJ8EGFyTDCnIcWI1NFHya/w3b3+/MWkjrr
 VnWZNh/Z5jeZwt/IX73/9K+SENmRfPdonWwsSLa6PBz2BFYCIIya/M/xhrzZEBB19gc5
 9pKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754685474; x=1755290274;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=g3cL4173TD/GE23drUNUHmAMHH2CpGpaopBf0wJi8Eg=;
 b=GmLDkVkOMZES4BMEEFLZMMRgzANaCuoF8NJsik6u+AaIh6Nlbab/eZdY8pA7jn2IV0
 Id8zbUnItcrDxEF/qCX3WThoApGXThxNM84C5slce/IEv2m2EzktHy69092NkYi4sKhT
 9e83Pj49iEGTrU1REvuB2x1T7y1fg4UcX9wzEuVKGAk6/CIklGs+Nq7hn4Ch8tHVAn4Z
 Y0vLNyt/fmMTghGParpc/MI8NFvHYwwbqz/+5ZMUHJWN9UTrgzFikDLK14QFyDFBc59M
 LkDsTDnCG97+TpxU9PMfKCzTN5vcSnR5h4DOWgBN0OJh2JHov0tZZNLc+5NEylBwHfkp
 5PlQ==
X-Gm-Message-State: AOJu0YwZaNIZN/+ViDFwNy+mljLv5mSCoWOhxGz5ayuIx/OLz9vuSypm
 vX6SkW5tsp1jQp7BXpRulnHbvvkqL1PX/6B4h/5XEzZNJ1BUxuoZVzTZI4f7g4XX9fU=
X-Gm-Gg: ASbGncswFtqS+YUULc18eAEhjRqRBOhdqb60zYRgBcgT9r+ZV46fpKbBO9FDKY3C3jI
 0qiQb3pqojjuB/gSoQ4eyJ272YnOIlwgCcyn1pjdKyFdjcsuscZV8uZkEhLfJxomxIgwzZgQ3D9
 uVnXO2nyzma/g0wwjsYSCmUCLSYtGoJZ/TBbBCPXP3I6PQ/aNEDn4zEodnmD3GILr27to0kRa0A
 GFbGMBhto4MJcpPzeLd3XhcP42YIg86flWB2J/G3eoOROBhsB0oD6J7ZFnGOqhXWLaxdV+cghYV
 7M5wjRV8xj3gwQeMWR6iQzCu1wTB0Fyp33HFjsxDH+dsSn0lswofA6ryju0BZDZ/C+fbG3mLZ4b
 MTg==
X-Google-Smtp-Source: AGHT+IH3T9GniO3kCs0U0D+h3PJP0VuPWpGN/Vxl1xLYGpAFBBVll3FFeR9g+Gn5YSooj3vdJntuWQ==
X-Received: by 2002:a05:6602:6d0e:b0:864:68b0:60b3 with SMTP id
 ca18e2360f4ac-883f126e6e2mr962460039f.12.1754685473932; 
 Fri, 08 Aug 2025 13:37:53 -0700 (PDT)
Received: from CMGLRV3 ([2a09:bac5:8255:4e6::7d:6f])
 by smtp.gmail.com with ESMTPSA id
 ca18e2360f4ac-883f198d551sm82229339f.19.2025.08.08.13.37.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Aug 2025 13:37:53 -0700 (PDT)
Date: Fri, 8 Aug 2025 15:37:51 -0500
To: Corey Minyard <corey@minyard.net>
Message-ID: <aJZgH01YM9sFRkUO@CMGLRV3>
References: <20250807230648.1112569-1-corey@minyard.net>
 <20250807230648.1112569-3-corey@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250807230648.1112569-3-corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On Thu, Aug 07, 2025 at 06:02:33PM -0500, Corey
 Minyard wrote: > If the driver goes into any maintenance mode, disable sysfs
 access until > it is done. > Why specifically sysfs reads during FW update
 state? Is there an expectation that during a FW update,
 that redfish/ipmi/etc...
 are chunking/buffering the FW payloads to the device, thus needs write ac
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.41 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1ukTqm-0001Za-RN
Subject: Re: [Openipmi-developer] [PATCH 2/4] ipmi: Disable sysfs access and
 requests in maintenance mode
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
From: Frederick Lawler via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Frederick Lawler <fred@cloudflare.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

On Thu, Aug 07, 2025 at 06:02:33PM -0500, Corey Minyard wrote:
> If the driver goes into any maintenance mode, disable sysfs access until
> it is done.
>

Why specifically sysfs reads during FW update state? Is there an expectation
that during a FW update, that redfish/ipmi/etc... are chunking/buffering the
FW payloads to the device, thus needs write access? I'm assuming that the
device is blocking waiting for paylods to finish, so sending additional messages
just get ignored?

> If the driver goes into reset maintenance mode, disable all messages
> until it is done.
> 
> Signed-off-by: Corey Minyard <corey@minyard.net>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index f124c0b33db8..72f5f4a0c056 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2338,6 +2338,11 @@ static int i_ipmi_request(struct ipmi_user     *user,
>  
>  	if (!run_to_completion)
>  		mutex_lock(&intf->users_mutex);
> +	if (intf->maintenance_mode_state == IPMI_MAINTENANCE_MODE_STATE_RESET) {
> +		/* No messages while the BMC is in reset. */
> +		rv = -EBUSY;
> +		goto out_err;
> +	}
>  	if (intf->in_shutdown) {
>  		rv = -ENODEV;
>  		goto out_err;
> @@ -2639,6 +2644,12 @@ static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
>  	    (bmc->dyn_id_set && time_is_after_jiffies(bmc->dyn_id_expiry)))
>  		goto out_noprocessing;
>  
> +	/* Don't allow sysfs access when in maintenance mode. */
> +	if (intf->maintenance_mode_state) {
> +		rv = -EBUSY;
> +		goto out_noprocessing;
> +	}
> +
>  	prev_guid_set = bmc->dyn_guid_set;
>  	__get_guid(intf);
>  
> -- 
> 2.43.0
> 

Best, Fred


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
