Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8342B929D
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 Nov 2020 13:38:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kfjD1-0006JZ-GD; Thu, 19 Nov 2020 12:38:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kfjD0-0006JN-94
 for openipmi-developer@lists.sourceforge.net; Thu, 19 Nov 2020 12:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n2bv/cLDYS+WfqbFySGfXKEkQq1vveQfrw1XHuIr4p8=; b=i2rUKoqw6tzYcLfQ2bXWxPNVXD
 1VFyGYKM/vcs4MXOTICpxTa3nUX8aF7MkwH5+76a3pogqW62ZQPCVT/thneGzU8wQsQK0MBr7vFrN
 psGI4kF2vFhyQJjgPFBvjwQnQ2qMTb0pPywTNQcGN2BSsdT579QZmzxo4Pzx9obH3PeM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n2bv/cLDYS+WfqbFySGfXKEkQq1vveQfrw1XHuIr4p8=; b=lol8cn5BErKPDQ4Q1qppcgUPHR
 miSbQspNtmz0Frfncid1AiiUnfXlON4qMKKSS4o+kddP/qFZGkI4cpEgdLl4ckc/W8IuBh9ZMvomf
 3z0qgG6bogC40pCbYkc3JSrEqRmFA37pAAx2bekGKYZhw823Luk4mwdlUlZYbbBl8z7s=;
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kfjCy-00HFrT-7L
 for openipmi-developer@lists.sourceforge.net; Thu, 19 Nov 2020 12:38:42 +0000
Received: by mail-oo1-f65.google.com with SMTP id h10so1298713ooi.10
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 19 Nov 2020 04:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=n2bv/cLDYS+WfqbFySGfXKEkQq1vveQfrw1XHuIr4p8=;
 b=DG2lS0KRrtmTbGaOTGL73LGIfcxvcB/qubpdw3HQcUXA08EAmRvbJ5LrPEEQWhOWNi
 Zx8na/p+GbCHEOWwcPKOXdgD5Jr3BGtQobhGnDDdWzj4I0bOqHg+N+vFKJXjqpNd4137
 N+rqyG0ZbthbJyNyW1Rab1x0ui6O0qEIop7FNZ+bRWk6ZvglCiTzhpgWR/Vp/xqPC6Lv
 s9MEb7hha0rLipwEqR0Gufdj/fwkw9h3IkMyZPzCrqLkAJPMTfenYwm4fe0Saul7TjrS
 +c/YbiYd5mBAGDWxoy8kUHoUDWGGwEZf8/BShNk/Di2cz58rwCoIWghaOx1Zw4COdV+5
 Ppkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=n2bv/cLDYS+WfqbFySGfXKEkQq1vveQfrw1XHuIr4p8=;
 b=HMJo+8uKva0Bng1zMI2d4WtI+3w7WfLRRZLCnDve4Z038F7kFflBO2TNC/2oJACPN7
 gcsTzlGLDlAGeohbCm/JSJKpjugzM6DGZmw7NvjB0187FIMHo8q4GikFu0PotxIFRGQm
 g1R8EoHBbyE0QVa/rDYY9x6p5jQY5ltIzrtH/INmAkQBqN0KzQly9d88ugZ4+lPgiqFJ
 vinqcJ43YHvlSf32RajCRSxkV1ivDNa1vPJZvGxYaRNDcnnlxbDT4D/e5XX1u5udMcZr
 VeUY8ObuTKSkscjPAbxegrCSKdiNZER83dBiBPcMCBEMhRKUtz2ivDnQeD1wH4ms1Zlw
 34Fw==
X-Gm-Message-State: AOAM533uLyCVHL5Pp/kovnnckKb92ZQ34FRyTignbnbcnGTpygVNSUbh
 BP3G1AB4GVZgwi1XXOm4fg==
X-Google-Smtp-Source: ABdhPJwQ6NyAbg2GhlN6KPKdOqUneJzzoExcKVfN/jx/ZurB3E8jB62sxyTvcadsW75q7GW8YNoNKA==
X-Received: by 2002:a4a:b689:: with SMTP id v9mr10440361ooo.0.1605789514480;
 Thu, 19 Nov 2020 04:38:34 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id f20sm6348550otp.70.2020.11.19.04.38.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Nov 2020 04:38:33 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1d26:c11b:68a6:17b3])
 by serve.minyard.net (Postfix) with ESMTPSA id 738D1180048;
 Thu, 19 Nov 2020 12:38:32 +0000 (UTC)
Date: Thu, 19 Nov 2020 06:38:31 -0600
From: Corey Minyard <minyard@acm.org>
To: Qinglang Miao <miaoqinglang@huawei.com>
Message-ID: <20201119123831.GH3710@minyard.net>
References: <20201119070839.381-1-miaoqinglang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201119070839.381-1-miaoqinglang@huawei.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kfjCy-00HFrT-7L
Subject: Re: [Openipmi-developer] [PATCH] ipmi: msghandler: Suppress
 suspicious RCU usage warning
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Nov 19, 2020 at 03:08:39PM +0800, Qinglang Miao wrote:
> while running ipmi, ipmi_smi_watcher_register() caused
> a suspicious RCU usage warning.

Thanks.  I had looked at this and found it was ok, but I hand't spent
the time to figure out how to suppress it.  It's in my next queue.

-corey

> 
> -----
> 
> =============================
> WARNING: suspicious RCU usage
> 5.10.0-rc3+ #1 Not tainted
> -----------------------------
> drivers/char/ipmi/ipmi_msghandler.c:750 RCU-list traversed in non-reader section!!
> other info that might help us debug this:
> rcu_scheduler_active = 2, debug_locks = 1
> 2 locks held by syz-executor.0/4254:
> stack backtrace:
> CPU: 0 PID: 4254 Comm: syz-executor.0 Not tainted 5.10.0-rc3+ #1
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1 04/ 01/2014
> Call Trace:
> dump_stack+0x19d/0x200
> ipmi_smi_watcher_register+0x2d3/0x340 [ipmi_msghandler]
> acpi_ipmi_init+0xb1/0x1000 [acpi_ipmi]
> do_one_initcall+0x149/0x7e0
> do_init_module+0x1ef/0x700
> load_module+0x3467/0x4140
> __do_sys_finit_module+0x10d/0x1a0
> do_syscall_64+0x34/0x80
> entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x468ded
> 
> -----
> 
> It is safe because smi_watchers_mutex is locked and srcu_read_lock
> has been used, so simply pass lockdep_is_held() to the
> list_for_each_entry_rcu() to suppress this warning.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Qinglang Miao <miaoqinglang@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 8774a3b8f..c44ad1846 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -747,7 +747,8 @@ int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher)
>  	list_add(&watcher->link, &smi_watchers);
>  
>  	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
> +			lockdep_is_held(&smi_watchers_mutex)) {
>  		int intf_num = READ_ONCE(intf->intf_num);
>  
>  		if (intf_num == -1)
> -- 
> 2.23.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
