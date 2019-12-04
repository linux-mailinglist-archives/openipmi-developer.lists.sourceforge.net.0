Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBF0113602
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 Dec 2019 20:53:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1icaic-0006aO-Vr; Wed, 04 Dec 2019 19:53:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1icaia-0006aH-Tg
 for openipmi-developer@lists.sourceforge.net; Wed, 04 Dec 2019 19:53:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1ccUP/BsSLKFdVTOMaSAFo+VBkb4hk34A6+Fpg9Nhz4=; b=ecw/IotlGkMZXSIZbX3GUnZgIg
 v3f5Cq6FZZma2YWUR/s+nJD7wclKobJWmuX5r0GkPGQGkiJcI8biT52hKFG/slxaceNhfsZYTyAmD
 jNbCvDahMS+E1i4RqNd6DEapYi93YhsWoZz9fL60g7G/4VjgChPfdYTfWO8VrT1uqaYE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1ccUP/BsSLKFdVTOMaSAFo+VBkb4hk34A6+Fpg9Nhz4=; b=DFGxuuNocKBdQcBashRBvIklQK
 PJyt0QtgmKErGmxsa5nDv2nAhuG1un09wlxoVWNFPF3ubAdkxOMnaa4wlmQay4eUeWEctUQEY5KP9
 1ni+qwahtEAA65rqKAPl5USrpEUDXmrWGlVV9f9TSqaDxu+hMFvnWPHFjj14ypTtOmJ0=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1icaiW-009XzI-Fe
 for openipmi-developer@lists.sourceforge.net; Wed, 04 Dec 2019 19:53:48 +0000
Received: by mail-ot1-f65.google.com with SMTP id h20so388790otn.5
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 04 Dec 2019 11:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1ccUP/BsSLKFdVTOMaSAFo+VBkb4hk34A6+Fpg9Nhz4=;
 b=IYacCnGROYeuOQAOhnHWqGEcdsKbFKg0gYF1Mla2hoynDolSTijm7TKK0oUqzyQLU+
 w24ZlBL9++RgI6VQmXYnL7TnBQxPbJs4u4WA8jSHHG28472ji/1VbcxTYLIlo15sDRjq
 ni8cjFrzy3Ztin39YUeWXj13Bb8mo9ADgEGDePOx7qSUXyqRziVL+E4Y1e4kdq7KcAJi
 j+KnVV4f/mkI3mGvSZbhCaGyfdOFceVAPfQln6lc3sa1AQvvVE9EXa6+0XHESYqWlC4a
 T/XOs1cW94HLuvEbNoh7sV4nVivhd3MQavdE00LV8BNvcDrs/I4Z7VrTmSVr4d9R67ha
 W/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=1ccUP/BsSLKFdVTOMaSAFo+VBkb4hk34A6+Fpg9Nhz4=;
 b=AC76QL4XrnRCc5Ztr/Z5OJcj4RQVakcDF4f1tprTTXzIuIQR5BLEbGQHH82vklW2Ls
 cOgDJk1/GmR4rmaxkPfGWNm/SuUT0j3Rtow/Byjh9K3hds02+QDB3+1VNKN4OJ5Is//M
 e3PgC8uSS4k+kuJD6/zPTGMf8D7zKo0/tWJj1Ple0uxURtyS/4Mrayd8Ro2x/8CriPIf
 CuIQbcUzNwEXg5dI1spdJbNuzcLcGDJojIfGclhK2Bfo5cGNwWo3C1cdKR0UlhWnFLnW
 F1wAYtcIczlbeLKaolQI79+KSQ4JsOoAK//aeyviFh0Bizi+d22fIQ/Jr7G7TiCRK1AJ
 Pigg==
X-Gm-Message-State: APjAAAVkBnBliXBKL0mCTCAQgJEv379oddd7HMhiwHtqpswzPsExz2ur
 QOigOOASudOu3uMK+2QaeA==
X-Google-Smtp-Source: APXvYqznF8ydo9ltax1I5VkZ9tFU1MUNpifvTjIs+Gc3eXLbf/e/W6Yyv38+FQmmB+uVT6F1q6tqYA==
X-Received: by 2002:a9d:7c83:: with SMTP id q3mr3865076otn.66.1575489218179;
 Wed, 04 Dec 2019 11:53:38 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id u126sm2670496oib.45.2019.12.04.11.53.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:53:37 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 2DFA8180059;
 Wed,  4 Dec 2019 19:53:37 +0000 (UTC)
Date: Wed, 4 Dec 2019 13:53:35 -0600
From: Corey Minyard <minyard@acm.org>
To: John Garry <john.garry@huawei.com>
Message-ID: <20191204195335.GD2896@minyard.net>
References: <f6fc58e5-2133-9560-a5bd-5cadc107ac51@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6fc58e5-2133-9560-a5bd-5cadc107ac51@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1icaiW-009XzI-Fe
Subject: Re: [Openipmi-developer] Suspicious RCU usage in ipmi code
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
Cc: openipmi-developer@lists.sourceforge.net,
 Anders Roxell <anders.roxell@linaro.org>, paulmck@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Dec 04, 2019 at 05:19:11PM +0000, John Garry wrote:
> Hi Corey,
> 
> I'm booting an allmodconfig kernel on my arm64 system from recent Linus'
> master branch, and I see this:

I've looked at this for a bit.  For the second warning, it looks like I
need to add an srcu_read_lock() around that loop.

For the first warning (line 744) I'm not sure.  There is an
srcu_read_lock() right before this, so I'm not sure why this would be
happening.

I'm trying to reproduce now.

-corey

> 
> [  188.241001][    T1] IPMI message handler: version 39.2
> [  188.247331][    T1] ipmi device interface
> [  188.256271][    T1]
> [  188.258541][    T1] =============================
> [  188.263388][    T1] WARNING: suspicious RCU usage
> [  188.268236][    T1] 5.4.0+ #1416 Not tainted
> [  188.272645][    T1] -----------------------------
> [  188.277496][    T1] drivers/char/ipmi/ipmi_msghandler.c:744 RCU-list
> traversed in non-reader section!!
> [  188.286971][    T1]
> [  188.286971][    T1] other info that might help us debug this:
> [  188.286971][    T1]
> [  188.297235][    T1]
> [  188.297235][    T1] rcu_scheduler_active = 2, debug_locks = 1
> [  188.305314][    T1] 2 locks held by swapper/0/1:
> [  188.310072][    T1]  #0: ffffffd0149687f0 (smi_watchers_mutex){+.+.}, at:
> ipmi_smi_watcher_register+0x5c/0x248
> [  188.320295][    T1]  #1: ffffffd016c9aff8 (&ipmi_interfaces_srcu){....},
> at: ipmi_smi_watcher_register+0xa8/0x248
> [  188.330771][    T1]
> [  188.330771][    T1] stack backtrace:
> [  188.336671][    T1] CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.4.0+
> #1416
> [  188.343604][    T1] Hardware name: Huawei Taishan 2280 /D05, BIOS
> Hisilicon D05 IT21 Nemo 2.0 RC0 04/18/2018
> [  188.353506][    T1] Call trace:
> [  188.356688][    T1]  dump_backtrace+0x0/0x3a0
> [  188.361089][    T1]  show_stack+0x28/0x38
> [  188.365142][    T1]  dump_stack+0x1ac/0x23c
> [  188.369371][    T1]  lockdep_rcu_suspicious+0x100/0x118
> [  188.374646][    T1]  ipmi_smi_watcher_register+0x134/0x248
> [  188.380185][    T1]  init_ipmi_devintf+0xec/0x140
> [  188.384936][    T1]  do_one_initcall+0x2f8/0x710
> [  188.389600][    T1]  kernel_init_freeable+0x304/0x3dc
> [  188.394701][    T1]  kernel_init+0x20/0x180
> [  188.398928][    T1]  ret_from_fork+0x10/0x18
> [  188.403333][    T1] ipmi_si: IPMI System Interface driver
> [  188.411646][    T1] ipmi_si hisi-lpc-ipmi.5.auto: ipmi_platform: probing
> via ACPI
> [  188.421958][    T1] ipmi_si hisi-lpc-ipmi.5.auto: IRQ index 0 not found
> [  188.428737][    T1] ipmi_si hisi-lpc-ipmi.5.auto: ipmi_platform: [io
> 0xffc0e3-0xffc0e7] regsize 1 spacing 1 irq 0
> [  188.439386][    T1] ipmi_si: Adding ACPI-specified bt state machine
> [  188.448341][    T1] kobject: 'wakeup' ((____ptrval____)):
> kobject_release, parent (____ptrval____) (delayed 1000)
> [  188.458824][    T1] kobject: 'wakeup20' ((____ptrval____)):
> kobject_release, parent (____ptrval____) (delayed 250)
> [  188.471778][    T1] ipmi_si hisi-lpc-ipmi.5.auto: ipmi_platform: probing
> via ACPI
> [  188.481621][    T1] ipmi_si hisi-lpc-ipmi.5.auto: IRQ index 0 not found
> [  188.488390][    T1] ipmi_si hisi-lpc-ipmi.5.auto: ipmi_platform: [io
> 0xffc0e3-0xffc0e7] regsize 1 spacing 1 irq 0
> [  188.498936][    T1] ipmi_si: Adding ACPI-specified bt state machine
> [  188.507082][    T1] ipmi_si: Trying ACPI-specified bt state machine at
> i/o address 0xffc0e3, slave address 0x0, irq 0
> [  188.524402][    T1] ipmi_si hisi-lpc-ipmi.5.auto: bt cap response too
> short: 3
> [  188.531809][    T1] ipmi_si hisi-lpc-ipmi.5.auto: using default values
> [  188.538483][    T1] ipmi_si hisi-lpc-ipmi.5.auto: req2rsp=5 secs
> retries=2
> [  188.572794][    T1]
> [  188.575080][    T1] =============================
> [  188.579930][    T1] WARNING: suspicious RCU usage
> [  188.584797][    T1] 5.4.0+ #1416 Not tainted
> [  188.589206][    T1] -----------------------------
> [  188.594055][    T1] drivers/char/ipmi/ipmi_msghandler.c:3453 RCU-list
> traversed in non-reader section!!
> [  188.603617][    T1]
> [  188.603617][    T1] other info that might help us debug this:
> [  188.603617][    T1]
> [  188.613884][    T1]
> [  188.613884][    T1] rcu_scheduler_active = 2, debug_locks = 1
> [  188.621945][    T1] 2 locks held by swapper/0/1:
> [  188.626704][    T1]  #0: ffffffd01496c8f0 (smi_infos_lock){+.+.}, at:
> init_ipmi_si+0x78/0x24c
> [  188.635436][    T1]  #1: ffffffd0149689b0 (ipmi_interfaces_mutex){+.+.},
> at: ipmi_add_smi+0x5e4/0xae0
> [  188.644864][    T1]
> [  188.644864][    T1] stack backtrace:
> [  188.650765][    T1] CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.4.0+
> #1416
> [  188.657698][    T1] Hardware name: Huawei Taishan 2280 /D05, BIOS
> Hisilicon D05 IT21 Nemo 2.0 RC0 04/18/2018
> [  188.667598][    T1] Call trace:
> [  188.670777][    T1]  dump_backtrace+0x0/0x3a0
> [  188.675178][    T1]  show_stack+0x28/0x38
> [  188.679230][    T1]  dump_stack+0x1ac/0x23c
> [  188.683458][    T1]  lockdep_rcu_suspicious+0x100/0x118
> [  188.688726][    T1]  ipmi_add_smi+0x630/0xae0
> [  188.688745][    T1]  try_smi_init+0xdbc/0xf18
> [  188.688759][    T1]  init_ipmi_si+0x14c/0x24c
> [  188.688773][    T1]  do_one_initcall+0x2f8/0x710
> [  188.688787][    T1]  kernel_init_freeable+0x304/0x3dc
> [  188.688802][    T1]  kernel_init+0x20/0x180
> [  188.688815][    T1]  ret_from_fork+0x10/0x18
> [  188.731333][    T1] ipmi_si hisi-lpc-ipmi.5.auto: IPMI message handler:
> Found new BMC (man_id: 0x0007db, prod_id: 0x0001, dev_id: 0x01)
> [  188.935301][    T1] ipmi_si hisi-lpc-ipmi.5.auto: IPMI bt interface
> initialized
> [  188.942797][    T1] ipmi_ssif: IPMI SSIF Interface driver
> 
> In the code we seem to be using srcu read lock instead of rcu read lock for
> list iteration protection, but that's a quick analysis. And there is also a
> mutex locked in ipmi_smi_watcher_register() [didn't check the other case],
> so I wonder if rcu list iterator variant is required at all.
> 
> Apologies if this has been reported previously. I see that Anders (cc'ed)
> has been reporting some of these sorts of issues.
> 
> Thanks,
> John


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
