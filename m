Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wHOJHWSxIGob6wAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 00:57:40 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBC163BB19
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 00:57:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=IQrNAZRF;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=m7mw9aH+;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=dSauFlFk;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=dPKiQ2kj;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CL/iAl05wzs8vBu8VhzxtdU+qwtPLqPNQ19FBLIVpHQ=; b=IQrNAZRFz4tr2dw4MU+ARtGDBd
	UGyHSPOvS5yL/fbltdEL6DLImkTnuwkBkhZNLe6pucrDgh3kdt84Ks5RbN4ZvIspWtOOz8/AyW/nj
	5jUag2cKdSgHE8oeMCcw531logPs4ds9YoS6ADwzR6LI7SCCwnIseBRu1RB/0H77vVJo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wUuWc-0000ab-7C;
	Wed, 03 Jun 2026 22:57:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wUuWb-0000aV-1R
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 22:57:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wvFjNISO/d9CrbxS5lupYvAlGYUYzF33rNDwaHayfK4=; b=m7mw9aH+Oz3HDER61gDMrI2HTZ
 Oscp9E0lE5b8D/SDKC/gpMDUCC5L3tlW6dGj3gsKqs2b42rhxRmFoxsyjlIuEtfE4qnOvrYZzwizK
 x5vYaQamVbdFB1MolAckeDPY1M5cs/+9GZTGndnF+xzjtSg/Xp4NnGa8NAOtdD0TzsmY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wvFjNISO/d9CrbxS5lupYvAlGYUYzF33rNDwaHayfK4=; b=dSauFlFkDSOmumgv0rogYIutLm
 yNEDc5L0n8eqtkGhUs4XRe+VIup3yqNS3/An+m2bo3wFYuIBaovae/44Pp9pwBfiHXxIw+2I3agM7
 dimPZD5aIJkxz26UcbucgKPGaSBzds2fTmgetj/T2TWi2udHdy2ciYLODsX2a9sleaMo=;
Received: from mail-oa1-f44.google.com ([209.85.160.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wUuWZ-00033G-C8 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 22:57:24 +0000
Received: by mail-oa1-f44.google.com with SMTP id
 586e51a60fabf-43b7e186a0cso59392fac.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Jun 2026 15:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1780527433; x=1781132233; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
 :reply-to; bh=wvFjNISO/d9CrbxS5lupYvAlGYUYzF33rNDwaHayfK4=;
 b=dPKiQ2kjsTIg9Ibept13KfAC4V46dqE6xuTCuPIMnqasRHaH/foxVMiMbtO/usPQfv
 IQARV1csjFA9PbQ+Fy5RpyVfMKogDgm39VJp/JLygpLSbkAx0PNNKtD9X88qGN2Ep8LH
 9Q5Zi/2ICuoTZHC4KOcOtc3qdfpsZmDQU7FxlPR73+iKhc4uSVXzZpRYrXPA25f/RIHE
 LbNIIS/9neRPRHm86ygyuYo/22ADU14SINTp7m+IJ+jtqpeBQsSoSfpLVlm8T8cyLHjT
 V49HjHTctA7oAso6rnledJzXBPaQ+0CvpQINYwIanJZkJjpZ4P4mKp5iCnXl4Nrw1VLY
 OVbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780527433; x=1781132233;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=wvFjNISO/d9CrbxS5lupYvAlGYUYzF33rNDwaHayfK4=;
 b=Bd8zQu2/faG/CPRMOPGuIS51XlptJtx7d7nJJDhlq0ESmZTaXhBp5X8tpbto3J/vp4
 6Lo2OiYblpEB2UUoSqyv42ZWP34ebVTd0liL/1VSrV1stwaqPrYFRUdYHq2CFbZppQGP
 yrtI7QZ/JWoBPlMGcIiGljNHOinRcpVMLo7iNIywQznrWuVa+Q7xiWxVNH6vcj2eyL9O
 N9FW7DbUaOpR8hniKOoPi9VmCejNuiJ0zBmfLOv1D9fRIch2mlvlmmqRAZ7IHRSgoSm4
 KVne75c7k2+HOgPYG0QXA+vVEMgU1xYQGMLRm2YsSuH/kE9abYWPRnMmayz8v6Gpvh4x
 ORDQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+P+WklIJis0BSZza6bgQha9aIr2YQE/cHlsKZ0LuqKKZHyI5KZTw+z9q6JeFokuuMZRdWHEjDtjzcnRVPyjXg2KQI=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyPASOd9DQEF0+ZmstiTG39nx6nq17xv3ac5m2twHWgr7REny/5
 /V6eYYX7Y8J+cBYH9BbRWSh/Gj0ijjhWWMzMrIKlf5gNQb6/bG4qUN3U/3bsDfJL8Ts=
X-Gm-Gg: Acq92OHRMUHzbReNc4k6SINygHKOJUaOUW7hNF5imPsxPJpm/IroQNjArl2s6Jq9Oay
 60yUAqCK8QiYxj1n5ott/FguJmMOFz8KQJxZPB+F/Q+c92ybE1L2wYDj/LHYGV0eJZ8AAg7TnHO
 2e5u2vhXEscdw+AOExcgttMlsMU5SsXZCILGzLSpeHzyTdcCupbSYXB/uj3FH3gvZz2hAs2Uvfb
 WfkZLHnToiP8mlQDrNp1kvbVPvYTwzc9CrwN6SmvyYSW/8s8Pu3Yp89dD1O9QVU0jxWBamE5CV3
 SpwN2vSfiGtVQNpEw6d1Ni1FpcShDHzw82m3UdYcYn1Dq/daRc5pemVVUCnhAGJ9Eps7Sgu73iD
 x1DmOEoWlJ4WHWNv7qC0gZ22ErkARtORd24Affz7ng5dxjwzXRvTFCJWKLp+CAlRiP6DORKxQML
 V7sRh3U/hggVFnSaQmEWj0YDCUCvDQ0h0fetlt2ipoqmiAosBkYCnWNSuwMOPPTx8UmHf242ebQ
 YC4SuVwXEtwIHaU8bN/sCdM7A==
X-Received: by 2002:a05:6870:889c:b0:43b:7078:af9a with SMTP id
 586e51a60fabf-440db5dd0femr3530793fac.15.1780527433122; 
 Wed, 03 Jun 2026 15:57:13 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:144e:c181:b1d6:32f9])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-440d8295b38sm3768373fac.10.2026.06.03.15.57.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2026 15:57:12 -0700 (PDT)
Date: Wed, 3 Jun 2026 17:57:08 -0500
From: Corey Minyard <corey@minyard.net>
To: Rosen Penev <rosenp@gmail.com>, linux-kernel@vger.kernel.org,
 "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>
Message-ID: <aiCxRPJBfskDx2Pn@mail.minyard.net>
References: <20260603192511.6869-1-rosenp@gmail.com>
 <aiCwfoG0uQf0aSCK@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aiCwfoG0uQf0aSCK@mail.minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 03, 2026 at 05:53:56PM -0500,
 Corey Minyard wrote: > On Wed, Jun 03, 2026 at 12:25:11PM -0700,
 Rosen Penev wrote: > > Use platform_get_irq()
 to retrieve the interrupt resource instead of > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.44 listed in wl.mailspike.net]
X-Headers-End: 1wUuWZ-00033G-C8
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
	FORGED_RECIPIENTS(0.00)[m:rosenp@gmail.com,m:linux-kernel@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,lists.sourceforge.net];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,minyard.net:from_mime,minyard.net:replyto,io.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CBC163BB19

On Wed, Jun 03, 2026 at 05:53:56PM -0500, Corey Minyard wrote:
> On Wed, Jun 03, 2026 at 12:25:11PM -0700, Rosen Penev wrote:
> > Use platform_get_irq() to retrieve the interrupt resource instead of
> > directly parsing and mapping the OF node via irq_of_parse_and_map().
> > This is the standard pattern for platform devices.
> > irq_of_parse_and_map() requires ire_dispose_mapping(), which is missing.
> > 
> > Assisted-by: Antigravity:Gemini-3.5-Flash
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >  drivers/char/ipmi/ipmi_si_platform.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
> > index fb6e359ae494..e10b5d8af092 100644
> > --- a/drivers/char/ipmi/ipmi_si_platform.c
> > +++ b/drivers/char/ipmi/ipmi_si_platform.c
> > @@ -276,7 +276,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
> >  	io.regspacing	= regspacing ? be32_to_cpup(regspacing) : DEFAULT_REGSPACING;
> >  	io.regshift	= regshift ? be32_to_cpup(regshift) : 0;
> >  
> > -	io.irq		= irq_of_parse_and_map(pdev->dev.of_node, 0);
> > +	io.irq		= platform_get_irq(pdev, 0);
> 
> This should be something like:
> 
> 	io.irq = platform_get_irq_optional(pdev, 0);
> 	if (io.irq > 0)
> 		io.irq_setup = ipmi_std_irq_setup;
> 	else
> 		io.irq = 0;
> 
> right?

Oops, cut and paste error, try:

 	io.irq = platform_get_irq_optional(pdev, 0);
 	if (io.irq < 0)
 		io.irq = 0;

This just disables the interrupt if it can't get it.

> 
> -corey
> 
> >  	io.dev		= &pdev->dev;
> >  
> >  	dev_dbg(&pdev->dev, "addr 0x%lx regsize %d spacing %d irq %d\n",
> > -- 
> > 2.54.0
> > 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
