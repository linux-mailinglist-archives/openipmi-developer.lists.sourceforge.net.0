Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0N+xG/iPzmkbogYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 17:49:12 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A864E38B718
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 17:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gq673okwhNkMqrwOy8ozKRKduYvFmp07DmFaIU+1XqI=; b=jPOEf30HrlHezkWb9E45ylNtyu
	QL3TBxBNVM+OwSx3YKbIsZ4o+HihqwN/QtOspWuuh2CTqT68B3O5MxEtAPgXrr92QKDoKfVKIAl0Z
	alGyaursx+PHcYq3EQ92cWAsWPQCu2CQSwZnXLdRSp02J6m+KSccLgjGHDv3SAM4VJFo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8KI0-0002P4-Uf;
	Thu, 02 Apr 2026 15:49:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1w8KHy-0002Ow-TU
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 15:48:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Re66h9KNwZ6Fa0uoAF0Ox2fmzRwioposUrnLSowRmsk=; b=HaV9n92PfEqo11eszZNK2hmCNJ
 ksrl7VK/nve5eVniu+yV9jrm72ltsQzjC8yS3rqlamPfL02FRKokXNj4wWDApTbNA3FHJQ2HxWSpN
 tyJx6Ajchp4FPdboHX3tTvat3xM6qpUxsHNdRtqRpA6DKrkRKnzedjflAH7gBNq7NF+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Re66h9KNwZ6Fa0uoAF0Ox2fmzRwioposUrnLSowRmsk=; b=d5pxWUWmu6qptGSHvELOBX7FMP
 MHuIryR1mQagc1AT4BOF5E/EU0GPw1IRGFwDkNfuEoI4k2+8/42n0nETQldDqOO6unLdd/gyQndz0
 ikh9FK5OpzL2tg/f/udk/TMkuBQVygD2QUjjIU04oXNVQU5aqtnixZoWztrF1i4B8YPs=;
Received: from mail-dy1-f178.google.com ([74.125.82.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8KHy-0007mQ-Ba for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 15:48:58 +0000
Received: by mail-dy1-f178.google.com with SMTP id
 5a478bee46e88-2c5b3d8eab1so1096919eec.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Apr 2026 08:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1775144928; x=1775749728; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Re66h9KNwZ6Fa0uoAF0Ox2fmzRwioposUrnLSowRmsk=;
 b=lcR5P4lq3JpJboEnM3hSopH0Yc/1lTHR91eaSCzdItX9okERVf/AUsKYc58hxiu3Fv
 0MsIExdhGMzdbBQPwhFydylbzx1aVq6d/15XdFC7Y9zFeeXvCGowUM/8nhjWiPKft4Ja
 0Wto1LomRD2FMOSAvDJ9aWXdGkAi2rP5JOEWVoxg+O76nXQwP2l/UY/L4BEVVp258ZEF
 y2kyJbvK/Nw8Xj2mw8b4XaiVSaf0TT2oj/f+KQHJDCzWeD/ZOEGFWkugttS79LO/joWv
 CIXSFJxhSRQTcs6NT5Rx7VrUsEU166zndvsdVmau0VDZVi3/TfkV3vtyKUi3BnNeCL8f
 sHOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775144928; x=1775749728;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Re66h9KNwZ6Fa0uoAF0Ox2fmzRwioposUrnLSowRmsk=;
 b=WFZ9tEbm1IfMwZ1umRYkGKSNBbdT8snFKBKS7RHxg3AkPfyWBkYitkg1rwFoRBwSgi
 uOMEN4mDHgTd3BccNyK2uaQtgiEtBnXk8q0ArpoyKOPdMziMLZ3jjYcY3YOcg7mMIc/i
 a1haOQ57HFsw9Elu1yg2W1pV9U+NH6qpLIW+gmq3NngWMwXJQInOt6zFJH4dsV+n6isC
 h6D4TkntcRXPugJS5bi8mD2/agUGuqc7DxdWAoLAQKSzMTfAmPIk5VCk4ylNZSD60hwo
 jycMfPpe/02dgGAGcH4C7irx/mwQUb+3/Lk0wXcXrLTscBRvLf6cFW8K2mwCGHnOjagz
 BmLg==
X-Gm-Message-State: AOJu0Yw6vFaJmmsxytQEh2bjyGBxdTKN4MdjdhTqbpJdggbsBhYfdcyO
 M9iOZRK7a0zG1j1At0HqXDVRnH1YCR3A2aLyoyVh4/Qfof2fminxxag4bN3oLdwj1Q7N7/ZRSYZ
 UE+eskyM=
X-Gm-Gg: AeBDievciTED2g16Tp5DPu9SkXN97UuZ3M819ZYuCrEcxeFqw22zsqwn38nvk8bWPqm
 if+oVBT2sZUehJhReCMUy9wdQoCT95xYPSVTIfq31b78pDhGHoNaVaFnCGEjNjQjymQgD4A693i
 S5YLVNQgaxrBWCVAnSpYfox50zbwXdhAvzmPt9gVicfrjtZDEg5dxnkNI1FwBnhcQNEltKIzy9F
 wsSOPV2EqVlWrRRprsZOxfwcEmuTIHSSwBs6dfItydf6s7rgE2JHYIl+TUJggZh0B/SzL+2qo2q
 J1mnVfOFVNZ0dSgX3yZOdNea7Zb3Y6vZnYJL+hCMGPC6wJmeRg9eHi/XjV/MMyZ/tN3YtmeGZyk
 +BLNR17irsH1Ori/nVPc0tBCsoQN+b0BwB2fsRVO4D1uZw4/T9/tf5xFa3E7G+ZvHgFGcOaV6tq
 VwkE5MKbfokY933bOHqqSOgO/jWRHCKOEGLNFMVMwQmkMjbsnZNwmmU//tmP9rGmW6RjkckDKoT
 WbTFqwXcvk5G1w=
X-Received: by 2002:a05:6830:6b09:b0:7d7:b6b2:607e with SMTP id
 46e09a7af769-7db991ed625mr4935431a34.5.1775144583724; 
 Thu, 02 Apr 2026 08:43:03 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:d6c6:4627:14b5:9503])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7dba7159fd9sm2340173a34.7.2026.04.02.08.43.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2026 08:43:03 -0700 (PDT)
Date: Thu, 2 Apr 2026 10:42:59 -0500
From: Corey Minyard <corey@minyard.net>
To: Jian Zhang <zhangjian.3032@bytedance.com>,
 Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <ac6Og2aNEoT0p2xj@mail.minyard.net>
References: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 02, 2026 at 07:04:31PM +0800,
 Jian Zhang via Openipmi-developer
 wrote: > The response timer can stay armed across device teardown. If it
 fires after > remove, the callback dereferences the [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1w8KHy-0007mQ-Ba
Subject: Re: [Openipmi-developer] [PATCH 1/5] ipmi: ssif_bmc: cancel
 response timer on remove
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhangjian.3032@bytedance.com,m:quan@os.amperecomputing.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:email,minyard.net:replyto]
X-Rspamd-Queue-Id: A864E38B718
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 07:04:31PM +0800, Jian Zhang via Openipmi-developer wrote:
> The response timer can stay armed across device teardown. If it fires after
> remove, the callback dereferences the SSIF context and the i2c client after
> teardown has started.
> 
> Cancel the timer in remove so the callback cannot run after the device is
> unregistered.

This whole series looks good to me, and I have added it to my next tree.
I'd like to hear from Quan, though.

-corey

> 
> Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
> Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
> ---
>  drivers/char/ipmi/ssif_bmc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index 7a52e3ea49ed..348e29490945 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -843,6 +843,7 @@ static void ssif_bmc_remove(struct i2c_client *client)
>  {
>  	struct ssif_bmc_ctx *ssif_bmc = i2c_get_clientdata(client);
>  
> +	del_timer_sync(&ssif_bmc->response_timer);
>  	i2c_slave_unregister(client);
>  	misc_deregister(&ssif_bmc->miscdev);
>  }
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
