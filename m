Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1rRzG52yIGpW6wAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:02:53 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE9863BB7A
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:02:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=YsO+lmwy;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=evPq+Sx4;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=k0V7gGzg;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=b5zcovqu;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qZirmtL5SeVrozlbHs8S7LAHtCrcWsCPllm+Ytw0Cks=; b=YsO+lmwy5GRsHkGsHFzFQ0AsGw
	KEjDq5D9+W6RIMqYHJYXk9fPirq4T56R3GflDTQ4tUmKnBvWAjcwEo/VBOI/UwYXFTlIRoH/eflZ3
	X8jLlTQ3RGO0e9AzKOTibY11WoCCew24Rm0za+CdlQv1lwbqwvcJWKBfR5XoRJswmiw4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wUubl-0000jS-Sx;
	Wed, 03 Jun 2026 23:02:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wUubW-0000jD-C4
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 23:02:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WCRL1M8f7KgT9oWEGazTM+11LlaS20N0f9r6dImRp7o=; b=evPq+Sx4ky/SHSEJtyjvAvgvvB
 V3vwWHPDk2281na4dXA46UFI7TrkNVd4KCFrmeOVzgbLr6tfBXkAiyP9bnrG5jl1neJaB2w4DpIfH
 Tt54JySNk+DkAmzeKrdfI5x/9LQ7PWvoTvg2e+Vze7WXmrflD8RhTfIRQX7j5WvvKhXs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WCRL1M8f7KgT9oWEGazTM+11LlaS20N0f9r6dImRp7o=; b=k0V7gGzgAkZsq8d9FhbWbctVnN
 X2s9paRDasnPRp7vqeAo82RY6zMkBt5kNCTSC1SP95JXr9cQuz92yUy0svf+A8xubO60VUCP/wmKx
 V6BBoBczf50Q7aAWcESSGLiJgrBFw2o6VpKS/aua7a5hXR3ciLVl1iZL7fd1ikCKixBo=;
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wUubT-0003iT-A9 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 23:02:30 +0000
Received: by mail-qk1-f169.google.com with SMTP id
 af79cd13be357-9157b949fc7so19345085a.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Jun 2026 16:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1780527742; x=1781132542; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WCRL1M8f7KgT9oWEGazTM+11LlaS20N0f9r6dImRp7o=;
 b=b5zcovquf1VwqwahzcsuglHd8ge8erbfOUAHdpAmb80Fw7kLZQJKPtD88NC39Y+Qnk
 vU9avVMDv2hfocbbgE4shOb8IYHy64eTa8SlDviuCSeS8EvojfVvHwjOWP2VAxVq4Cxr
 MBmZquCR/mwZIC0JOWQeah4Rvq6aZ35F6JRO4Yd5opIcN8KTIz7YoEgh5adY4vGaQdHr
 YhNnfmFwPye2MMoCjDtagsFRZjZU5JcgSPmvB5pRr4tLwAVZtHC4Y7OxlVojtqNLtwOO
 2CXK6akq1HQlk5dRbri0NGcHYOJgbjAjty5QXhBd0UTcZ95WROd7nKtb1+KLpjAe4fG8
 R1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780527742; x=1781132542;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=WCRL1M8f7KgT9oWEGazTM+11LlaS20N0f9r6dImRp7o=;
 b=gSddJKdgXJjJ6yd/1M8P+8QEEB46a1iOz4+2K9vmNoTugdL9PzjA4U8bMcUadliTmt
 6neW3xHEGgMRKHRBQkvu/1YMO0TGecjSIsc5iGPDoMqONFLEUo7ojtGVs5Wd1dOubPK6
 Nfz/ubsSJ6srmlbjOc0+o0fTFOV3OZE3Qovr1y9d6809x1VFqscAVMjWo2dP2n+YQfyp
 OQ4/OproqCQ6nORmhggJEF4PHY0IYoNPU9t8t4AjQ1DHEEWXKtt1Lvl3q075ABPcbMP7
 hg7J0k01r9bLdQRJFd4NIvP5u0hKKWKE8LME67dC8Im8Mf7a6DutwoDSFvf4BFOu9fFg
 RZqw==
X-Forwarded-Encrypted: i=1;
 AFNElJ9WkZViwqjcbDYCpHEiix1B3x/xb2sB25KryfBjEbt/pjZYnkNcHVntWqcMDYK2fafSO6c75/Nq5sGEUWNcpAYJx6g=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwFD1Q1B6VfTZXg4tJ3FMge7tritIkrn6/T7YNwbYQCnddKHY3s
 UP399yBprlVXQeN4zID3QynMXpXRntwpadRZ4fxf6XvTmtld9sMpF2+fjLvTYnpXYTiEGDKOBP0
 eJDuC
X-Gm-Gg: Acq92OHcn4p2knBf3XpfHxTn2jOCAx1dES6cg7FHPR0rRXR42luPRXDED2Xc1ijKHXS
 4sQKeJ1ravJ4qJWno6wtA3m+bprQnR4la0HtyOMkTA1kA8DpEfTXsnldNKTVPM7mjJQ6jnpGCfH
 HpEFHkq6R4j4rjTKsRytRcVoCjUO7SX7UzRMJLJ1P/and3UxYLHSsfKzdwcYrnO+p0d7v4SBnCA
 zlDaoTAWyNtgZvVPA4WOjqqDsKlBFVp8g2QBo5Ri3vRFG8Q7D9Dyd6lP4nYy7gmrYPuQPDJ+6Ok
 pOYKRyks5lqJB5uGcf/uJRiNRm/LLtpK5ShX4wA+KjszJJu+jMR74BSLB4WOLXu292N2UUOftUH
 IJT9UQX9I0DeaogY9G8zRMjGG88cS5N/oWwuOF0o3uKjRIKBh9SvcrYKmU06Th0E0xGr8FXoUwM
 B/IaU8ASedYBnF50LEh5HvtLNkcESap3ghWa6mk7jGJan+LIoRUgsoXUJEUhDmcahOO2tybzU6C
 VrR5Luql0RlDpjUj5XrdzeX8w==
X-Received: by 2002:a05:6808:4481:b0:486:39db:ebf7 with SMTP id
 5614622812f47-4865ac2426fmr3535435b6e.44.1780527236261; 
 Wed, 03 Jun 2026 15:53:56 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:144e:c181:b1d6:32f9])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-4865b96e2dbsm2844586b6e.13.2026.06.03.15.53.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2026 15:53:54 -0700 (PDT)
Date: Wed, 3 Jun 2026 17:53:50 -0500
From: Corey Minyard <corey@minyard.net>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <aiCwfoG0uQf0aSCK@mail.minyard.net>
References: <20260603192511.6869-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260603192511.6869-1-rosenp@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 03, 2026 at 12:25:11PM -0700, Rosen Penev wrote:
 > Use platform_get_irq() to retrieve the interrupt resource instead of >
 directly parsing and mapping the OF node via irq_of_parse_and_map( [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.169 listed in wl.mailspike.net]
X-Headers-End: 1wUubT-0003iT-A9
Subject: Re: [Openipmi-developer] [PATCH] ipmi: si: Use platform_get_irq()
 to retrieve interrupt
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
Reply-To: corey@minyard.net
Cc: "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rosenp@gmail.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:from_mime,minyard.net:replyto,io.dev:url,mail.minyard.net:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8CE9863BB7A

On Wed, Jun 03, 2026 at 12:25:11PM -0700, Rosen Penev wrote:
> Use platform_get_irq() to retrieve the interrupt resource instead of
> directly parsing and mapping the OF node via irq_of_parse_and_map().
> This is the standard pattern for platform devices.
> irq_of_parse_and_map() requires ire_dispose_mapping(), which is missing.
> 
> Assisted-by: Antigravity:Gemini-3.5-Flash
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_si_platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
> index fb6e359ae494..e10b5d8af092 100644
> --- a/drivers/char/ipmi/ipmi_si_platform.c
> +++ b/drivers/char/ipmi/ipmi_si_platform.c
> @@ -276,7 +276,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
>  	io.regspacing	= regspacing ? be32_to_cpup(regspacing) : DEFAULT_REGSPACING;
>  	io.regshift	= regshift ? be32_to_cpup(regshift) : 0;
>  
> -	io.irq		= irq_of_parse_and_map(pdev->dev.of_node, 0);
> +	io.irq		= platform_get_irq(pdev, 0);

This should be something like:

	io.irq = platform_get_irq_optional(pdev, 0);
	if (io.irq > 0)
		io.irq_setup = ipmi_std_irq_setup;
	else
		io.irq = 0;

right?

-corey

>  	io.dev		= &pdev->dev;
>  
>  	dev_dbg(&pdev->dev, "addr 0x%lx regsize %d spacing %d irq %d\n",
> -- 
> 2.54.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
