Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FXZOKO0CPmpF+ggAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 06:41:17 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B07A56CA282
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 06:41:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=eBr5wsc5;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=IcBzY14k;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="HZc/UuLV";
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=osED19n1;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fZeUCOhnNyJzzCn/4+GAHtNTbGVN3Alh2B2NeqJmW18=; b=eBr5wsc5wF1FO6jZm7vtEYMwp/
	GfwRukRxOQPMuwphqRH7t9U0mh1yfvH8ZQueZwmazvCudQK8bEs3jH66M2pcipEvufNOek76QH9YP
	JUfdwAkCZX/ikV2lo4yLCMcPk1dTGf/7lsJz3FSIeOWuoEuy3tkAYbpJgec4rPulqFPU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wcyNI-00040s-7R;
	Fri, 26 Jun 2026 04:41:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wcyNH-00040l-1e
 for openipmi-developer@lists.sourceforge.net;
 Fri, 26 Jun 2026 04:41:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jdfyplQ9EasUEql6K476vKlCuj17zzX9nYS9dLlfSYc=; b=IcBzY14kv8jj7mnC+5L1lFEeJv
 aIH4yguM2kI9Dfe8/CzJWV4sPdwFKtrInh1mYHPY6AbYMIfM1bs8uLH1JJykgr8HisnB3/kUQ9+vP
 cU0ckO8clFsylSDG5CkdPoUHOKelw8QsSDd3NJuS53ZdpzsX0VUrPy2VaTBOMKZM4hqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jdfyplQ9EasUEql6K476vKlCuj17zzX9nYS9dLlfSYc=; b=HZc/UuLVMYOtbBliGBR6202s00
 5giB1TDp9BeZmBbxRucONyA/qaXIPDtIYWeImukPjNFlVfJDHQqHQWZct89ZCOo1UXalFas1dd5hm
 0QR8KBqqvS0YBujtfhiGYSCB2Z/yEwSJClFEM3NGfJjZY3J1n0Sg8q9omsAAFbrXdPD4=;
Received: from mail-ua1-f48.google.com ([209.85.222.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wcyNE-0006fi-N4 for openipmi-developer@lists.sourceforge.net;
 Fri, 26 Jun 2026 04:41:07 +0000
Received: by mail-ua1-f48.google.com with SMTP id
 a1e0cc1a2514c-966db0b76daso1079787241.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 Jun 2026 21:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1782448859; x=1783053659; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jdfyplQ9EasUEql6K476vKlCuj17zzX9nYS9dLlfSYc=;
 b=osED19n1R8+l/AfHnAWfEwpLOCP+B/mHcoz1hJ55eE5ApSBzW7hKAwR2ATMpooca5U
 cHBS/KEL36HXi4Ws6J1gCfB1qTaUz/8Y9tuZjnaxRuN8Ktzdgy9YytyRcBWesh14j0Kj
 J3lVCY1W6fZZ5BdSAdis2adHGZdt4nTB0pTfyOmgqOQxQ4XAcmtb1euXJAeWbINuJO4I
 JfauHFkm8WO1eVNMhX2CuG0Y5k9GNe+Td4BTcwa4ZJwKZKw+0THyeqxR2jekFVdPWQX2
 1tf1nAD2hdezHD6K9o6dSujvolZWrpR3pCA5MWVP8+yXFowsnAc+LsXIoyFGXRaCAPhJ
 wvSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782448859; x=1783053659;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=jdfyplQ9EasUEql6K476vKlCuj17zzX9nYS9dLlfSYc=;
 b=QaG1ysBIBEmQ8VfnWJCH8iHHPC1TxXcxAsTIGajOee0x2d50JR4V8OnOm3QuAraOUK
 B9fiYisiemK6cbx1+X3E2EouRwDWeozZgTCvlSn3UfhCDSlxAfiCuyhLD6ECUsw6/lTV
 t9ToB6vW1Rb+/caLC8shaFEqpAu+XgZ9TUiWEmpNhmzXnnO187QxgFOtPRxqnRV4SgHU
 3ov/KFM1Ge1+ToCgJXMtNu83D62MURocCn8OUsxkfbwFafjk5wdido+8lMH2EpFfay7u
 D7Cg/mBgbb/GEsBMz1TQpTLNQWWp4QWxYPtOFpCfJ2y48Ltc4euVxU3ojRuHzGYqNQ9M
 GSpw==
X-Gm-Message-State: AOJu0YzVMHEEBIghaXDHYCLXgI7DArOK5BgjhdyOfqsxlqejPliCglgk
 8EHwsMobTGUKF2ZB+68PonFrsMN6uu+KeOjVkLDFHGLnt5EQDwUU5A/tNNrBsjRBXlA368/h3gZ
 KG2V0
X-Gm-Gg: AfdE7clSn7O+mskwoEO7eN0UpPnCl0IzJnPQvLMCCZ2679TAwmh2xGLfKkN3NPJam2d
 fbLEPk0cGkbFIh/vW58uthbEX1QDrFBHjIpZlA/PMmckc0uuAgPW4r5EatibBB74ABbp2lkUyeL
 NSTmvVo4fF655lAQ42dkqGQSo8mVC7RWTO4R0i+m54q/xXmCEI+X/LlbZ6ltrKkhRJ4qZLsH8DQ
 8soIjjJCrUg41lCkq+YOHRuOPOWGwSLHoVMNaiI41aSD/4dyyVuA9Er4UpEUQldhhfk1ObpBi76
 1hF9gnk4009WOMpCmDp7QvXKw8ByFe6MH0NPvFRT/PNSYFLSc8f54QRt2MUuS+0mAZi73nRr23a
 9lLS55OKvwSwOhndW1kGJrP/wZEyhOP0deOG0qjtPPtCs90dp/eAjl1bv7Uw1Bm1Q7vwsqhJb5W
 i5eAFARcLInx/UZjyJB4k5fWMexHwd+4a6YZ5wR6GTjmAOb473LDWxEhN3bevuJagmis66UqeaT
 6aTuAUd+KR+ULw2vSJH0gCEv0jvin19OrnZUg==
X-Received: by 2002:a05:6820:4df3:b0:694:85da:3f92 with SMTP id
 006d021491bc7-6a1126b54d4mr9565146eaf.17.1782448520629; 
 Thu, 25 Jun 2026 21:35:20 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:c047:37b0:eea4:3569])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-44778b6159fsm10879029fac.11.2026.06.25.21.35.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2026 21:35:19 -0700 (PDT)
Date: Thu, 25 Jun 2026 23:35:14 -0500
From: Corey Minyard <corey@minyard.net>
To: Michal Clapinski <mclapinski@google.com>
Message-ID: <aj4BguM85rpvcTM6@mail.minyard.net>
References: <20260625155954.1948908-1-mclapinski@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260625155954.1948908-1-mclapinski@google.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 25, 2026 at 05:59:54PM +0200, Michal Clapinski
 wrote: > Added a new config option to allow offloading slow part of >
 init_ipmi_si.
 Saves 100ms on my system. Are you loading as a module or building IPMI into
 the kernel? 
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.48 listed in wl.mailspike.net]
X-Headers-End: 1wcyNE-0006fi-N4
Subject: Re: [Openipmi-developer] [PATCH] ipmi:si: Add async init to ipmi_si
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mclapinski@google.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto,minyard.net:from_mime,mail.minyard.net:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B07A56CA282

On Thu, Jun 25, 2026 at 05:59:54PM +0200, Michal Clapinski wrote:
> Added a new config option to allow offloading slow part of
> init_ipmi_si. Saves 100ms on my system.

Are you loading as a module or building IPMI into the kernel?

I'm thinking this is a good idea, but not quite done this way.

I have another long-standing issue that if a BMC is not operational when
the system comes up, it will not continue to try to bring it up, so
you have to reboot or hotmod the device in when it becomes available.

I'm thinking that instead of pushing off the whole process, push off
just the individual calls to try_smi_init().  I'm assuming that's where
all the time is spent at init.

So with that it would be possible to periodically retry a BMC until
it eventually comes up.

Plus, that way the "unload_when_empty" function won't be broken with
this feature.

I am also not quite sure what will happen if you try to unload the
module if things are pushed off in a startup state like this.

I'm also not quite sure how this will affect the ACPI IPMI functions in
the kernel.  I would guess it's ok, since it registers to know when the
interface becomes available, but it might be delayed a bit which might
confuse things.  Also, it might delay the driver being available til
later at startup, which may confuse userland users.

I'm also wondering if making this an option makes sense, or if this
should be the way it always works.  An option might be nice if it broke
things, I guess.  But almost everyone uses modules, and that will be
delayed from boot, anyway.  I guess that means ACPI is not an issue,
either.

Just kind of pondering this right now.

-corey

> 
> Signed-off-by: Michal Clapinski <mclapinski@google.com>
> ---
>  drivers/char/ipmi/Kconfig        |  8 ++++++
>  drivers/char/ipmi/ipmi_si_intf.c | 48 +++++++++++++++++++++-----------
>  2 files changed, 40 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> index 669f76000197..8419409dc3b9 100644
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -67,6 +67,14 @@ config IPMI_SI
>  	  Currently, only KCS and SMIC are supported.  If
>  	  you are using IPMI, you should probably say "y" here.
>  
> +config IPMI_SI_ASYNC_INIT
> +	bool 'Asynchronous initialization of IPMI System Interface'
> +	depends on IPMI_SI
> +	default n
> +	help
> +	  Enables asynchronous init of the IPMI System Interface.
> +	  It speeds up the boot time.
> +
>  config IPMI_SSIF
>  	tristate 'IPMI SMBus handler (SSIF)'
>  	depends on I2C
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 9a9d12be9bf7..3e422c7df60a 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -39,6 +39,7 @@
>  #include <linux/rcupdate.h>
>  #include <linux/ipmi.h>
>  #include <linux/ipmi_smi.h>
> +#include <linux/async.h>
>  #include "ipmi_si.h"
>  #include "ipmi_si_sm.h"
>  #include <linux/string.h>
> @@ -2174,25 +2175,10 @@ static bool __init ipmi_smi_info_same(struct smi_info *e1, struct smi_info *e2)
>  		e1->io.addr_data == e2->io.addr_data);
>  }
>  
> -static int __init init_ipmi_si(void)
> +static int __init smi_init_scan(void)
>  {
>  	struct smi_info *e, *e2;
>  
> -	if (initialized)
> -		return 0;
> -
> -	ipmi_hardcode_init();
> -
> -	pr_info("IPMI System Interface driver\n");
> -
> -	ipmi_si_platform_init();
> -
> -	ipmi_si_pci_init();
> -
> -	ipmi_si_ls2k_init();
> -
> -	ipmi_si_parisc_init();
> -
>  	mutex_lock(&smi_infos_lock);
>  
>  	/*
> @@ -2271,6 +2257,36 @@ static int __init init_ipmi_si(void)
>  		return 0;
>  	}
>  }
> +
> +static void __init async_smi_init(void *data, async_cookie_t cookie)
> +{
> +	smi_init_scan();
> +}
> +
> +static int __init init_ipmi_si(void)
> +{
> +	if (initialized)
> +		return 0;
> +
> +	ipmi_hardcode_init();
> +
> +	pr_info("IPMI System Interface driver\n");
> +
> +	ipmi_si_platform_init();
> +
> +	ipmi_si_pci_init();
> +
> +	ipmi_si_ls2k_init();
> +
> +	ipmi_si_parisc_init();
> +
> +	if (IS_ENABLED(CONFIG_IPMI_SI_ASYNC_INIT)) {
> +		async_schedule(async_smi_init, NULL);
> +		return 0;
> +	}
> +
> +	return smi_init_scan();
> +}
>  module_init(init_ipmi_si);
>  
>  static void wait_msg_processed(struct smi_info *smi_info)
> -- 
> 2.55.0.rc0.799.gd6f94ed593-goog
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
