Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5C219D70B
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Apr 2020 15:00:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jKLvZ-0004jk-IH; Fri, 03 Apr 2020 13:00:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jKLvX-0004jZ-6L
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Apr 2020 13:00:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y7Q3Hqa9cJeyKOoOZW6QJxbkxoMfDJiYc9Ly72DE2g4=; b=iP1q0UdeG2YW1HMoXeDBtLJEn4
 0jNuslnOX2ceHMYwwFHT4pvQZ83VtCDmvgMndJ8tkvrUlEnACq9XkT9NHbzaVK1lCq0gLTRdhT+gJ
 Y7zBbJ3V9AEPStj71KrBAhPcRVQEo2WmoBilAT5xQdqNHDEVWV4HiFa0aZTZZ21Hcpqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y7Q3Hqa9cJeyKOoOZW6QJxbkxoMfDJiYc9Ly72DE2g4=; b=gL/RpQWuVRYh7GeX5dO6TPCqgr
 9+xi5D68Y5iIwxsMDnjg6lRvz94OYZVwTBGZjfVW5Yk0xBQgG+2Fg62NsQCuKzTC0wYvp7IrgpVUi
 oBUJWKibEjeAkGEzwFa6Y3iAgrtLeV66Cz8nZ0xkxn5NDJ2Isp3T+pCsnWMklpars4RY=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jKLvT-000QLx-J3
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Apr 2020 13:00:03 +0000
Received: by mail-ot1-f66.google.com with SMTP id z5so7094244oth.9
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 03 Apr 2020 05:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y7Q3Hqa9cJeyKOoOZW6QJxbkxoMfDJiYc9Ly72DE2g4=;
 b=XwhpdihPCZ6MrVtFFfzmhgdHBl+sdd4Zne7WLMu+c7HgRSMKQN25AQWkkgikDXyWIA
 l0iUrkPDulUMAkRCH9OZDtjV0Yib4lr//eigw+nZejSXPuAQxuiwpjoku4iaNwqEUf2e
 43dN0YGHm+xTk0SB2zXqtF9P9DWhI02qMSsIFxF6k/jsjbIRgGA2ECicMgLbiDdEUrlL
 j2GnNGikZMuK8F1N7qKtc/eXoOiJAA5YtedUk+EGt2sITT7hHax9yH/MfZCqWrdLRItK
 bKkHKcfsi0QOdHgJSEcpqGU8MxtUwBGHCCzv2KkSAOPn3ftphDGw5sGjYIecSUNbo/Yj
 50DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=y7Q3Hqa9cJeyKOoOZW6QJxbkxoMfDJiYc9Ly72DE2g4=;
 b=rdr4sRkVANuYR9HV95sNvCw1HFjHyG0sWbh61/g4TBdbocunAfbk/4AJqu2Y8qZqMv
 vG5+LE7xeEebUNVXLmBn9y/YX4Vg/M4VSWsTOOyz0R6VG7Gpp944xVZxSOHW6p/5eR9A
 85n9PUvfloOgt6Ix4l+ds48VuHS6cCSM61CkJyMATESoHPPW1We6e5db64//aMIVRvqW
 tjYQhEy8vsKkHWrvMyhUCOBz44HgLxxCGj/+wTSDhvW03XuTEUIDvvxhcBRgXGsJbw8q
 d+hpHsIPPb7wwYB2+l1HMKnFGu0pR2UpByitTYQd1xg4rPS8ctsuMvnYiMcV9FSi7g6e
 oWYw==
X-Gm-Message-State: AGi0PuZnPdaQyACqULMI+/E64rpMgKLbXmmZAea+UTzsxUOyJZlQcSlT
 d42zWW5/JIO/NyHCr5jCUg==
X-Google-Smtp-Source: APiQypJ5m92OvpyH+hoXOHYy6zPzNoMs3OJ7jGgrL+XJRaqcC1fvNp/Qy1Rjn9o6gELS2SAO1tesKg==
X-Received: by 2002:a9d:600b:: with SMTP id h11mr5948889otj.210.1585918793563; 
 Fri, 03 Apr 2020 05:59:53 -0700 (PDT)
Received: from serve.minyard.net ([47.184.130.101])
 by smtp.gmail.com with ESMTPSA id 69sm2080161otv.8.2020.04.03.05.59.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 05:59:53 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 2A7AB18016D;
 Fri,  3 Apr 2020 12:59:52 +0000 (UTC)
Date: Fri, 3 Apr 2020 07:59:50 -0500
From: Corey Minyard <minyard@acm.org>
To: Wen Yang <wenyang@linux.alibaba.com>
Message-ID: <20200403125950.GQ2910@minyard.net>
References: <20200403090408.58745-1-wenyang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403090408.58745-1-wenyang@linux.alibaba.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jKLvT-000QLx-J3
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix hung processes in
 __get_guid()
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

On Fri, Apr 03, 2020 at 05:04:08PM +0800, Wen Yang wrote:
> The wait_event() function is used to detect command completion.
> When send_guid_cmd() returns an error, smi_send() has not been
> called to send data. Therefore, wait_event() should not be used
> on the error path, otherwise it will cause the following warning:

Oops, yeah, that's a problem.  Thanks for the patch, I've put it into my
next tree.

I've requested a stable backport.

-corey

> 
> [ 1361.588808] systemd-udevd   D    0  1501   1436 0x00000004
> [ 1361.588813]  ffff883f4b1298c0 0000000000000000 ffff883f4b188000 ffff887f7e3d9f40
> [ 1361.677952]  ffff887f64bd4280 ffffc90037297a68 ffffffff8173ca3b ffffc90000000010
> [ 1361.767077]  00ffc90037297ad0 ffff887f7e3d9f40 0000000000000286 ffff883f4b188000
> [ 1361.856199] Call Trace:
> [ 1361.885578]  [<ffffffff8173ca3b>] ? __schedule+0x23b/0x780
> [ 1361.951406]  [<ffffffff8173cfb6>] schedule+0x36/0x80
> [ 1362.010979]  [<ffffffffa071f178>] get_guid+0x118/0x150 [ipmi_msghandler]
> [ 1362.091281]  [<ffffffff810d5350>] ? prepare_to_wait_event+0x100/0x100
> [ 1362.168533]  [<ffffffffa071f755>] ipmi_register_smi+0x405/0x940 [ipmi_msghandler]
> [ 1362.258337]  [<ffffffffa0230ae9>] try_smi_init+0x529/0x950 [ipmi_si]
> [ 1362.334521]  [<ffffffffa022f350>] ? std_irq_setup+0xd0/0xd0 [ipmi_si]
> [ 1362.411701]  [<ffffffffa0232bd2>] init_ipmi_si+0x492/0x9e0 [ipmi_si]
> [ 1362.487917]  [<ffffffffa0232740>] ? ipmi_pci_probe+0x280/0x280 [ipmi_si]
> [ 1362.568219]  [<ffffffff810021a0>] do_one_initcall+0x50/0x180
> [ 1362.636109]  [<ffffffff812231b2>] ? kmem_cache_alloc_trace+0x142/0x190
> [ 1362.714330]  [<ffffffff811b2ae1>] do_init_module+0x5f/0x200
> [ 1362.781208]  [<ffffffff81123ca8>] load_module+0x1898/0x1de0
> [ 1362.848069]  [<ffffffff811202e0>] ? __symbol_put+0x60/0x60
> [ 1362.913886]  [<ffffffff8130696b>] ? security_kernel_post_read_file+0x6b/0x80
> [ 1362.998514]  [<ffffffff81124465>] SYSC_finit_module+0xe5/0x120
> [ 1363.068463]  [<ffffffff81124465>] ? SYSC_finit_module+0xe5/0x120
> [ 1363.140513]  [<ffffffff811244be>] SyS_finit_module+0xe/0x10
> [ 1363.207364]  [<ffffffff81003c04>] do_syscall_64+0x74/0x180
> 
> Fixes: 50c812b2b951 ("[PATCH] ipmi: add full sysfs support")
> Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
> Cc: Corey Minyard <minyard@acm.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: openipmi-developer@lists.sourceforge.net
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 64ba16dcb681..c48d8f086382 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3193,8 +3193,8 @@ static void __get_guid(struct ipmi_smi *intf)
>  	if (rv)
>  		/* Send failed, no GUID available. */
>  		bmc->dyn_guid_set = 0;
> -
> -	wait_event(intf->waitq, bmc->dyn_guid_set != 2);
> +	else
> +		wait_event(intf->waitq, bmc->dyn_guid_set != 2);
>  
>  	/* dyn_guid_set makes the guid data available. */
>  	smp_rmb();
> -- 
> 2.23.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
