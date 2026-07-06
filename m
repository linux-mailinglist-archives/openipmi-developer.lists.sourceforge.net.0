Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EKtyDyjzSmqOKAEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 06 Jul 2026 02:13:28 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD1070BD1B
	for <lists+openipmi-developer@lfdr.de>; Mon, 06 Jul 2026 02:13:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=b2mwpQBi;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=JWq1nvih;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=XwCN57xf;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=WDI4XwTU;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none);
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FiYHAKWRhZEu8t2vFSEogQ+PyZDIpRvZKlE4kuLEeTg=; b=b2mwpQBiZH4Tl8ukkyLAyKGJVh
	X5/inBFu7op0m8pdkBdEwqfR78rAt2Rp9ZRm+ydT+9z6NU26tLhorrYmxveuRJTvpjt0T47oG1SM1
	zr5kTCA+/dXEI08Ca/bJI4dymdmaH22H4gG6Q7/Jkt00IQ7+1OEonrQPWIk6Rxhpi6aA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wgWxb-00055j-NI;
	Mon, 06 Jul 2026 00:13:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wgWxa-00055d-2S
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jul 2026 00:13:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=65vNV6ez7HNjnTZnjKG9ch8gY34s41P1iqpCH0Wy9yw=; b=JWq1nvihcqPJqxsKjc7tGcSzfc
 ikC/ab8DBYr3u3pRiSTwNpfPDK1Rdm/0WfshT5MT+YktY+irBBrrPQ9C4Cz4ck8y2zFy89/YJfUs6
 HpOC7Ui721XbEPcm2R+cOU1Q9K4ISSrjxH1Rb0FR2CfzYgOll9Y/zD+2x3bw88gVVvNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=65vNV6ez7HNjnTZnjKG9ch8gY34s41P1iqpCH0Wy9yw=; b=XwCN57xfaBpXzYhi+kwgmXtyUM
 lMI2bDBAIuc+qV6N6tLfWyl9JVChTAPrC/EKK+vDq5lNUTUcpayZi7VKCG3lf42G3wdzTbiOckSNi
 QUyU0KMNHlV7aW7QCe6lkTNXJN7YhRXB9jQn9xkBo7TnQFemEBvaYQ70EatUaIL549Tk=;
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wgWxV-0004vL-OX for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jul 2026 00:13:15 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 46e09a7af769-7e9f69ee6f4so2201294a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 05 Jul 2026 17:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1783296788; x=1783901588; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=65vNV6ez7HNjnTZnjKG9ch8gY34s41P1iqpCH0Wy9yw=;
 b=WDI4XwTUDEmjr3xVJI8RBARcbLFJV62jzGv/DQvKdgtXe6uL7CoOvEW1mQlE6kpk9L
 c59JakPf9XnLMpRwdKKvKNR3ebldGPQ9rk23tofSW+OvA9qYRmBrnYEYhPKX9ufrCwm3
 SadAT8SD8pffezy2OyPQMoN2hBMzjJkoj6XQtwQ5qIk5h0mUUEMFPcoIJJkvB3+Zt1Y2
 SUUPhIiQc58hNFJtRvQvRLyZli41+x/hEa6l5KueF8XFuyPbZJW+vWHxY6AhfZ9nAlUV
 okFswvZYyKFIKXxuDGnNcXIw5ontt/w/h+TTHpmCmbK25WA4VTcJc2TzmR/cvrZQfg1Q
 0MJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783296788; x=1783901588;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=65vNV6ez7HNjnTZnjKG9ch8gY34s41P1iqpCH0Wy9yw=;
 b=U4YnivrfgdiZmz/+Ur9CrNOwyxfQ+avw6vwJhEdVeFD+b3pXk0InuxYa7DC1j8mlP3
 P/tu7bgaiGnDMD6jCjopdHPsQ2Yatf/VoZTXzTu+RIQKLU0iWUkejKEYUUAON44vfAjC
 PhPFjS5huXC82eMfzIpQVNvyb4k4F+1EH2mI2DXJJ+LEvvGSLmwdOr+KwBa5Wx1fsR1O
 /Yugl0m7c6tAtMZy1iVj9D9cb4k6rcJTRfg31FBQqsnKeb/uiswEmPnHFNN3VN/ZpmpN
 JdhHEfc49KuvUIfslAcPsENqazXnClKWSTFNyf9mn7IhxO8FSM7yFXWWbwxWrKEv9YEJ
 c+dg==
X-Gm-Message-State: AOJu0YxQETlh6Fy8RDl8ImMBfqyJ2Q6Y+ypQlqA2mJoUZ6q6whIBNcAj
 AgOOloyISNF3l925ET3V9LybR8xdIxM7PNdXtKhuI89/HrVnHprFazrgjQIub+4aD3o=
X-Gm-Gg: AfdE7cnG37Ndz0PL0cGcQRO996mHYE4keTbXj8naCnaozB8RjLu8pMg6hxtJILMPutn
 FZ9dF+zNNaVTXYtKpXw2v5be4I6i9m5vLyEVUzzZGLhAA0TYsgprtsk5Cc16abko4lkzo5a1/TC
 KQB8G4TZPpjNPlb00N2X16hAGCz/yJz5pVpKvLNJ8O4jPE2RLvw0x5Luf+KPeZAcCemleTE02a3
 W3A/3/wFFFLPfF69YUemVHoxgEbxft1gIfHFaSsqOw3WI2TWQd2dSzxcX7YBsxnxFfZ/38T1POU
 S7N0IyaOibtBrvqFBZXkcW18Qi0EIYeHMQajHB5zgON9WYnt7lHbB7kFk1w5wPCL1Vs4RHukBdV
 q1CS2vrscU4A8+sZoQ9fEeGPjLZCWsumGv3n7p+nRIKreacWTof7zYOqd8ry+oErK6Q5K468rj7
 cpwecRsPOrKjO2JmCdkm+HbHrwRUCAKq3fjv4kmU9/V9qCPpCDB9ZC190xRrZtXq1BenJL5UCPM
 YBssLTsN70qd1KMrmaaGGheYXGBCn9Zg/u3fwLeY9ITHf/x
X-Received: by 2002:a05:6830:82ba:b0:7e9:da5e:93f7 with SMTP id
 46e09a7af769-7eb7ff98cd6mr5275306a34.26.1783296787587; 
 Sun, 05 Jul 2026 17:13:07 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ba03:1c5f:85be:5f65])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7eb542f07basm10587622a34.10.2026.07.05.17.13.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jul 2026 17:13:06 -0700 (PDT)
Date: Sun, 5 Jul 2026 19:13:02 -0500
From: Corey Minyard <corey@minyard.net>
To: Michal Clapinski <mclapinski@google.com>
Message-ID: <akrzDoUDAtjNOAvP@mail.minyard.net>
References: <20260703150955.3943082-1-mclapinski@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260703150955.3943082-1-mclapinski@google.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jul 03, 2026 at 05:09:55PM +0200, Michal Clapinski
 wrote: > Added a new config option to allow offloading individual calls to
 > try_smi_init(). Saves 100ms on my system. This looks good. In a few releases
 I may change the default to y, if I can remember it by then :-). 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wgWxV-0004vL-OX
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi:si: Add async init to
 ipmi_si
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AD1070BD1B

On Fri, Jul 03, 2026 at 05:09:55PM +0200, Michal Clapinski wrote:
> Added a new config option to allow offloading individual calls to
> try_smi_init(). Saves 100ms on my system.

This looks good.  In a few releases I may change the default to y, if I
can remember it by then :-).

It's in my next tree.

-corey

> 
> Signed-off-by: Michal Clapinski <mclapinski@google.com>
> ---
> v2:
> - instead of offloading the whole init function, offload just the
>   individual calls to try_smi_init()
> 
> I didn't implement the periodic retry feature that was talked about
> under v1 due to my lack of expertise. LMK if this is a deal-breaker.
> ---
>  drivers/char/ipmi/Kconfig        |  9 +++++++++
>  drivers/char/ipmi/ipmi_si_intf.c | 32 ++++++++++++++++++++++++++++----
>  2 files changed, 37 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> index 669f76000197..c8fa445c1c17 100644
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -67,6 +67,15 @@ config IPMI_SI
>  	  Currently, only KCS and SMIC are supported.  If
>  	  you are using IPMI, you should probably say "y" here.
>  
> +config IPMI_SI_ASYNC_INIT
> +	bool 'Asynchronous initialization of IPMI System Interface'
> +	depends on IPMI_SI
> +	default n
> +	help
> +	  Offloads invidual SMI inits. It speeds up the boot time.
> +	  It also introduces a very small risk that something else might fail
> +	  if it depends on synchronous IPMI init.
> +
>  config IPMI_SSIF
>  	tristate 'IPMI SMBus handler (SSIF)'
>  	depends on I2C
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 9a9d12be9bf7..504d5b8636ba 100644
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
> @@ -2174,6 +2175,17 @@ static bool __init ipmi_smi_info_same(struct smi_info *e1, struct smi_info *e2)
>  		e1->io.addr_data == e2->io.addr_data);
>  }
>  
> +static ASYNC_DOMAIN_EXCLUSIVE(ipmi_si_async_domain);
> +
> +static void __init async_try_smi_init(void *data, async_cookie_t cookie)
> +{
> +	struct smi_info *smi = data;
> +
> +	mutex_lock(&smi_infos_lock);
> +	try_smi_init(smi);
> +	mutex_unlock(&smi_infos_lock);
> +}
> +
>  static int __init init_ipmi_si(void)
>  {
>  	struct smi_info *e, *e2;
> @@ -2219,8 +2231,13 @@ static int __init init_ipmi_si(void)
>  				break;
>  			}
>  		}
> -		if (!dup)
> -			try_smi_init(e);
> +		if (!dup) {
> +			if (IS_ENABLED(CONFIG_IPMI_SI_ASYNC_INIT))
> +				async_schedule_domain(async_try_smi_init, e,
> +						      &ipmi_si_async_domain);
> +			else
> +				try_smi_init(e);
> +		}
>  	}
>  
>  	/*
> @@ -2253,8 +2270,13 @@ static int __init init_ipmi_si(void)
>  				break;
>  			}
>  		}
> -		if (!dup)
> -			try_smi_init(e);
> +		if (!dup) {
> +			if (IS_ENABLED(CONFIG_IPMI_SI_ASYNC_INIT))
> +				async_schedule_domain(async_try_smi_init, e,
> +						      &ipmi_si_async_domain);
> +			else
> +				try_smi_init(e);
> +		}
>  	}
>  
>  	initialized = true;
> @@ -2401,6 +2423,8 @@ static void cleanup_ipmi_si(void)
>  	if (!initialized)
>  		return;
>  
> +	async_synchronize_full_domain(&ipmi_si_async_domain);
> +
>  	ipmi_si_pci_shutdown();
>  
>  	ipmi_si_ls2k_shutdown();
> -- 
> 2.55.0.795.g602f6c329a-goog
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
