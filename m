Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PcRNeL51GmgzQcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 14:34:42 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9583AE75B
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 14:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0VhmDgQF5dMVZJAAqamn1jQyNpwg9dcok7gu38nsalA=; b=OcjUp8FygguuWW8VVKJGPW2/Gv
	qExS272bio6uLW/XL1nuEDJK7QfNAjVUT5unW1DKB+0Psq2e+iSgy4/EtRo2OGcT+eURFPoVAX6Ny
	vyVIDhPZcTj/oZIOtpgwBda81Ob6YixC70VGx3NDRs56oWwZ6Hz7ZoVxjy3KbGh9JXoQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wA5dW-0002m4-Jd;
	Tue, 07 Apr 2026 12:34:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wA5dV-0002ly-QG
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 12:34:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kQjKpsXxXwfTOmn8xNLLNm+gkxdA4DaJZsvTM1mT8Ko=; b=cMQplf+00PubvVs93WRM/olEMR
 dv0IFBUYDkt8znodFAd4yi27yM1b+F2voO1/fsWnZy9mJ0nK5YxVByQpcxA8hJ9RlNDjEfKPAj9qK
 J9Ft4gk0PhRKz3IoYNdZB2uYPO6/rJWmbz0+noy8eq8ucytFjiYg9BP5dfkN+jKEody4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kQjKpsXxXwfTOmn8xNLLNm+gkxdA4DaJZsvTM1mT8Ko=; b=hme0fR1uJVIZNwYd/aWJBUukGn
 nNwy96+llBlCSvaXU+13fecLv6oFTAUjoPTEzNs8rHVMrpbAEVFZvOEmm6vnjgq1rbJUPQAVtgSAB
 bqF7wd5IsLTx+FT7SS4GROuEBPiv538IHMBF4hjV5xmKoRxP6vv8JqeYs8d31KUZcaRg=;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wA5dV-0005Sl-8K for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 12:34:29 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-7d1872504cbso4680379a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 07 Apr 2026 05:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1775565263; x=1776170063; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kQjKpsXxXwfTOmn8xNLLNm+gkxdA4DaJZsvTM1mT8Ko=;
 b=i2dIEFGqLwZPpW6QNhAm7kwshdXudljYaVUN3NScUd9n4Kb1+kjJEsIl/zs9y0mJYs
 j1s3hD9cQtkkF9UEEp2+JKlJyz1+PCZMc9VsSys2uxfVIAGXs6naM0ymbcUOeKv5/2PH
 aT5Wh7zAg54A90zEwGoCJ8g82UTvCMLetq8uIWHIErsEJ65nxf+THt3c7hqI6PUDIu+6
 Gyvy3nIlWk6tfA/6i0gpu0FUG5djNwvuV8BPOw10tjSuzM8RSFypqjJ/VLtflPikjSAp
 6tljyvNMR0tyZzH0o7u42IMbEeRhLfLRZEMJTGiFf6xd2LwgLC2/mjqx9PA0JFMXTOVQ
 yUfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775565263; x=1776170063;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=kQjKpsXxXwfTOmn8xNLLNm+gkxdA4DaJZsvTM1mT8Ko=;
 b=SkrHsxzgY5uDqnOCMvhg6rz58/Ckwn0UXTZWWDPVeNCGASwsKfii5b3B6D1dFNe2J6
 8h2fo6DxdjvukeSUj4HGbufnm8o5bO6X50TQDWxxQMaa8cRsM+7KjR9TSkMyAPQrpxUL
 dPQt8Xu1GmIRmzpOBKugwoXxJFCPXJenk88ojayY3+ybpBbihfFMEEWqgezXoHjcK95g
 IvFN4ocApMC3Wv26WHibOX+yrnKVqGOzxNvwiXTI7ojlD+pTA0A7mGjQI0EFLGgIQCYM
 08dtjfpcECflMvdXAD45L8Ur2FpbICKzD95HuB5dT44IgZRrplhFs0GIrLhI7x8ngSNL
 x9aw==
X-Gm-Message-State: AOJu0Yz4xtGd4zibvhYXesvrIcq+5xfyXAoNvjF0TUJwL69y2ORvrhSs
 EVcZxnNiz5bJAY+r7LdgFxBbsgmCwF3E+/qwvMQvxk+tjQluNDeEChiC2Ch3Xa5wzFg=
X-Gm-Gg: AeBDievF4S+ktLovoGoD9CaXEPUO6zpms5DYuTEsBCu6ix49xhbWO5gDgRfeex64G+/
 gmctBJvomxN5qt8ALtd1XMgtdYMkj4Qi8KhTuFFZZTyPchKnj5npXszdXD5fB7ssnsNF8P7k/pb
 XoR1eMR0MDSap3uDYA/cTp0OPpTtFffel+q+ioTPhRGJCB7l8s+ciHpqt124lkysKYETLzT9nyI
 q4l/ON2n9FOKzgsbo+g/DZeT1wnCdR1VVWeOAML4A3VKuv6R7Kmn0kobpf3VDw3rJ9MYqfeS3t/
 WEZ+a2To0YGGSw/1PdGDK8LzIF9yUbQfIIpwiu2lbtIH3nqXzc3rbryxSIknJpZYhSmFMrZg2Xr
 7CcvZd+Z5jlKSfxVSF0A49NIeQTZOJyURzWJ499yYxNZgR60WN4cyuLUcEON0xYDYxRCsuFeSR5
 NPQpj9ilk0Yt7hF6Q05bprPPKUexmkhstII4eAgdH2AHhWJm8KtynTjs2XToQofBjVSlSuKRQev
 uofJUAADpmfUl8=
X-Received: by 2002:a05:6830:33e8:b0:7d7:4eaa:8b82 with SMTP id
 46e09a7af769-7dbabd17ff9mr7149715a34.17.1775565263471; 
 Tue, 07 Apr 2026 05:34:23 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ac98:37e1:7dd5:e156])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7dbf2ddd6c8sm2034596a34.23.2026.04.07.05.34.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2026 05:34:22 -0700 (PDT)
Date: Tue, 7 Apr 2026 07:34:19 -0500
From: Corey Minyard <corey@minyard.net>
To: Jian Zhang <zhangjian.3032@bytedance.com>
Message-ID: <adT5y6VoZfavg4Jg@mail.minyard.net>
References: <20260407094647.356661-1-zhangjian.3032@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260407094647.356661-1-zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 07, 2026 at 05:46:47PM +0800, Jian Zhang wrote:
 > Building with CONFIG_KUNIT=m and CONFIG_SSIF_IPMI_BMC_KUNIT_TEST=y > results
 in link errors such as: > > undefined reference to `kunit_bin [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.41 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wA5dV-0005Sl-8K
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Fix KUnit test
 link failure when KUNIT=m
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 kernel test robot <lkp@intel.com>
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhangjian.3032@bytedance.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:lkp@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_THREE(0.00)[4];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,minyard.net:replyto]
X-Rspamd-Queue-Id: 1E9583AE75B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 05:46:47PM +0800, Jian Zhang wrote:
> Building with CONFIG_KUNIT=m and CONFIG_SSIF_IPMI_BMC_KUNIT_TEST=y
> results in link errors such as:
> 
>   undefined reference to `kunit_binary_assert_format'
>   undefined reference to `__kunit_do_failed_assertion'
> 
> This happens because the test code is built-in while the KUnit core
> is built as a module, so the required KUnit symbols are not available
> at link time.
> 
> Fix this by requiring KUNIT to be built-in when enabling
> SSIF_IPMI_BMC_KUNIT_TEST.

Got it, thanks.

-corey

> 
> Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202604071448.zUBjPYPu-lkp@intel.com/
> ---
>  drivers/char/ipmi/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> index 72559f6050eb..669f76000197 100644
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -189,7 +189,7 @@ config SSIF_IPMI_BMC
>  
>  config SSIF_IPMI_BMC_KUNIT_TEST
>  	bool "KUnit tests for SSIF IPMI BMC driver" if !KUNIT_ALL_TESTS
> -	depends on KUNIT
> +	depends on KUNIT=y
>  	depends on SSIF_IPMI_BMC
>  	default KUNIT_ALL_TESTS
>  	help
> -- 
> 2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
