Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B6E9BB8CF
	for <lists+openipmi-developer@lfdr.de>; Mon,  4 Nov 2024 16:23:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1t7yus-00036u-Un;
	Mon, 04 Nov 2024 15:22:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <breno.debian@gmail.com>) id 1t7y3m-0002UA-EW
 for openipmi-developer@lists.sourceforge.net;
 Mon, 04 Nov 2024 14:28:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=isN9Ps/gLnEyDuQpgnADyJxf1zJtoLZcMM+6E1KR1JY=; b=hucIDR0jtz9S5PC1d4Asm+4SnZ
 qn1Z0cXZQmqDM5MId9MwFmpUEdCEo+AU7w9/jqlGGizR0p/bxnuvYdrc2Sytgt4sWUwQHnO8ckCOO
 mLpByMU2jvN6EQoG39sW13SXld/CsvmBs4hsB9DtgqcNaAJ4pe1CvtVOV7ql7LknA26s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=isN9Ps/gLnEyDuQpgnADyJxf1zJtoLZcMM+6E1KR1JY=; b=YuVx/00FHEfXoQbd4WFP1ekhZq
 PjkbMxvWctoc3c0+EXvqjebe7y7KKohoEKi3B0IqJLghnGV6NCf6coGMkloARqQy+lLNZcvWWiC0X
 9UumElN86JhmPvlq5lX0KmqejOoitvc/OS3oB7U3hRf/T2+mBxuw0xdViidKx0vRa1GI=;
Received: from mail-ed1-f49.google.com ([209.85.208.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t7y3m-0004lf-H3 for openipmi-developer@lists.sourceforge.net;
 Mon, 04 Nov 2024 14:28:03 +0000
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-5c941623a5aso9452504a12.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 04 Nov 2024 06:28:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730730471; x=1731335271;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=isN9Ps/gLnEyDuQpgnADyJxf1zJtoLZcMM+6E1KR1JY=;
 b=noYafaGyKhWLP6yYFOoLxUrnhWtUrKIBp39xH1CkyxWJU2jVqFozCcPY83qRfNPKUW
 5fRBe/1uLjgmx5ntFihiITNMqI47b3ElfuD8NJ3+gafzlwmdwu0H7b9wvPbCD3mkpk0i
 Vuigu+rPHwf4lD1lx7Ve0GCePtKTn2cvy/YzfP3578Nj40kUeUbHYBpjEjWXoiF51wB1
 1ykd2yFwINGOOW52rhPZoaCQNOptfEWeIM03u5qoFFhCbw2c4jcdMjF8lKUk6pUVr1+a
 DrSo5N5rljhAbHhO6S0dFIzaJ5YTIPL+8pZcyDBzI5fTAoHGs1R/n/DSABQ/vawnuuP3
 qenQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIGZXwpjXdt5O5K974y+LCBAGt8aggKDeiNa2v5+ISBIRzADGuexaWRnGTM3fddUK4IsWppPzz8nBU3MPGx+W4QQo=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw4ajKVeXjddZNx1eSvTc6wyVGfi1x/pMygTkMhQ9fGy/+SxxIo
 LIIA26hXQtMFiYdFGQHQwNcFcCAkFUjcIYkVOQMheqo4D3bHBS0q
X-Google-Smtp-Source: AGHT+IHORFWIN4tYcghfdXF6lQTuclCRRHh4TUUMvwA3JlRxkrLnaSTwD7zeFUNFURKiQxsS7Jx2yg==
X-Received: by 2002:a17:907:d27:b0:a9a:f19:8c47 with SMTP id
 a640c23a62f3a-a9e55a6fc0fmr1552692266b.13.1730730469107; 
 Mon, 04 Nov 2024 06:27:49 -0800 (PST)
Received: from gmail.com (fwdproxy-lla-008.fbsv.net.
 [2a03:2880:30ff:8::face:b00c]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9e564e9ceasm558811666b.96.2024.11.04.06.27.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2024 06:27:48 -0800 (PST)
Date: Mon, 4 Nov 2024 06:27:46 -0800
From: Breno Leitao <leitao@debian.org>
To: Qinglang Miao <miaoqinglang@huawei.com>
Message-ID: <20241104-jasper-chameleon-of-weather-59bcea@leitao>
References: <20201119070839.381-1-miaoqinglang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201119070839.381-1-miaoqinglang@huawei.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 19, 2020 at 03:08:39PM +0800,
 Qinglang Miao wrote:
 > while running ipmi, ipmi_smi_watcher_register() caused > a suspicious RCU
 usage warning. > > ----- > > ============================= > [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [breno.debian[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.49 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1t7y3m-0004lf-H3
X-Mailman-Approved-At: Mon, 04 Nov 2024 15:22:53 +0000
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, Arnd Bergmann <arnd@arndb.de>,
 Corey Minyard <minyard@acm.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Nov 19, 2020 at 03:08:39PM +0800, Qinglang Miao wrote:
> while running ipmi, ipmi_smi_watcher_register() caused
> a suspicious RCU usage warning.
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

You probably should use list_for_each_entry_srcu() instead of the
list_for_each_entry_rcu().

This problem is still happening in 6.12-rc5.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
