Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E31864656B1
	for <lists+openipmi-developer@lfdr.de>; Wed,  1 Dec 2021 20:42:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1msVUp-0007so-30; Wed, 01 Dec 2021 19:42:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1msVUo-0007sh-0e
 for openipmi-developer@lists.sourceforge.net; Wed, 01 Dec 2021 19:42:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l8qO7om+4nzmjVjsLMIjPrTYZn6f70uApjbAzAFnAII=; b=iodb8E/IvryfKrlmZTZE9TlQWa
 l5ewyKZm4fVgC1BuFF87URu+D741vOvpdyiOWkGs3hN9RHdYedpK8AFpjUSwx+4TKXwx49GHgbJzv
 aTvuXokHhdryiq/1yy9HPIijCGnh+fi5S4jcqN2T6yRIDjns3aXUHNNH/9u2H3GDAH4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l8qO7om+4nzmjVjsLMIjPrTYZn6f70uApjbAzAFnAII=; b=gBX2TUGHTFQFjoF/reiLtZul6t
 fWNPe5IKh3IiPGBb6DhddcUCC0f3ZR7yz82v1WWVq/MguVU22tK5tkL/iUhqIAilpiYW56y4mGZha
 5SMrUir6Q92H41EqPH76PFiWgAYyD6H5bjEmtdY9NjTWMMba/fX5PO6FKZ9EmSGHkxAc=;
Received: from mail-qv1-f45.google.com ([209.85.219.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1msVUo-0002Dx-CB
 for openipmi-developer@lists.sourceforge.net; Wed, 01 Dec 2021 19:42:26 +0000
Received: by mail-qv1-f45.google.com with SMTP id i12so9413064qvh.11
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 01 Dec 2021 11:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=l8qO7om+4nzmjVjsLMIjPrTYZn6f70uApjbAzAFnAII=;
 b=WXUZqXTCL8KfwqinPOWIo0VazQNtMfkW6ZzGdxJJv5rt9/w8YZ2aOfLPn3ofIT+eta
 /6bYu4nAMTND/1lOvYXyvq0W/rA/J8fSEQph0jN1BhUDkKCU18UK8vYuHuYrK+FNkgfs
 TzVF/wkrzogBYmlJT5pApHunknHtH6H5/cpoWzi2/r9oUp4F8vrFTXb+t6oaCBMYGBHA
 RbJ68/noDvr+IZhPTWpFRGRQP5tKUC5t5ZYj0DVJKddtd1Vrhr7/9mO+poeChLTgxhfV
 znimU5VNCObWYB2NeaBxezk5qxa397FuwUxBB2VH6gtf+SF3L4m8Eaoy1qA40cJb0lHF
 C3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=l8qO7om+4nzmjVjsLMIjPrTYZn6f70uApjbAzAFnAII=;
 b=wRw9cYPWAjVw8z8HslogZUxfAkoLYf42HIE+3dmGlbV4AMhhAFInTe9tRWFfMt1wAf
 jYPwWZsQ0zhw0jF9CfipfGe8a5UN7D9OmfPfzK8dVTtoeJd/Scwbin8vlvfKCYeBhGK5
 1953Gg7JGM3RvocvE5FZ8N1Il8LJNrHgBtPG7BnkHooD5PhO2P7z15VIa2wivYAOL+h7
 yUI3iq+veKrdg8B4Oh5SNLLoLViua+p4KDN5IREE+OQu5LHhg6mSp/wUVmxl97L2go2W
 YYSbIpzqjoMDc8Fw7iEOjiZuH8E4t1tXkVgNVB41fQq20ZxS59AQaABEMVNafTAver4b
 4NIQ==
X-Gm-Message-State: AOAM531pgXnAIXpcQlOm6PbxvWlENTP0dimNFk/R3qiP5hg+HeIi5jFs
 ErKoTlSrxm51YC2F0n1LBA==
X-Google-Smtp-Source: ABdhPJw0B5Dubc1lv639hbPOVNk7NjlHQE8JRIwKZNoWQhvu1ueaJjXoBP5afRGTBY71eqD9GZl2dQ==
X-Received: by 2002:a05:6214:dc2:: with SMTP id 2mr8536953qvt.39.1638387740549; 
 Wed, 01 Dec 2021 11:42:20 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id x15sm379714qko.82.2021.12.01.11.42.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 11:42:20 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b0fd:aad1:1fcc:32a6])
 by serve.minyard.net (Postfix) with ESMTPSA id 0DF0C1800B9;
 Wed,  1 Dec 2021 19:42:19 +0000 (UTC)
Date: Wed, 1 Dec 2021 13:42:17 -0600
From: Corey Minyard <minyard@acm.org>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Message-ID: <20211201194217.GI15676@minyard.net>
References: <20211128220154.32927-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211128220154.32927-1-rikard.falkeborn@gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Nov 28, 2021 at 11:01:54PM +0100, Rikard Falkeborn
 wrote: > ident is not modified and can be made const to allow the compiler
 to put > it in read-only memory. In my queue for next release. Thanks. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.45 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1msVUo-0002Dx-CB
Subject: Re: [Openipmi-developer] [PATCH] ipmi/watchdog: Constify ident
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, Nov 28, 2021 at 11:01:54PM +0100, Rikard Falkeborn wrote:
> ident is not modified and can be made const to allow the compiler to put
> it in read-only memory.

In my queue for next release.  Thanks.

-corey

> 
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index 883b4a341012..0604abdd249a 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -668,7 +668,7 @@ static int ipmi_heartbeat(void)
>  	return rv;
>  }
>  
> -static struct watchdog_info ident = {
> +static const struct watchdog_info ident = {
>  	.options	= 0,	/* WDIOF_SETTIMEOUT, */
>  	.firmware_version = 1,
>  	.identity	= "IPMI"
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
