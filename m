Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FB31130DD
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 Dec 2019 18:34:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1icYY3-00036c-DE; Wed, 04 Dec 2019 17:34:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.garry@huawei.com>) id 1icYY2-00034t-Ch
 for openipmi-developer@lists.sourceforge.net; Wed, 04 Dec 2019 17:34:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:CC:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yVArPpfRAX86vc7zopT3ZTP+FfGAFA/jPUVXal+YMRc=; b=UGN9cmxXHZGSD8En7KcXVl4YGw
 h/JPwfXGCYJYf0gLUveaSCMscYH0mPIFaGvekr8+sVXNyVexe81zQoRsh24v4PrHUhM6EmciiilSS
 whQmXTDnn8jtd7K/r9K4QcDpnXJ7t5K73hrWOi3BrBW1oTrcwlSlhtEY2tZePlngFWuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:CC:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yVArPpfRAX86vc7zopT3ZTP+FfGAFA/jPUVXal+YMRc=; b=J
 a6x0wGZ8wrZbbp+e28d927dfw0jub+FbpJ/cAsYc/oPIGBacBVRRiFrGS0MhVubckUFz3O9Oems7X
 A0O7peivXls0+VwODIHPWe4aCRZV206C4iZRN4up1ZmnUM5K/SGziOxeKtMyMSB/I2CqNpQgVp4Bn
 uHReiBhjGg27XquI=;
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1icYXy-009MER-J7
 for openipmi-developer@lists.sourceforge.net; Wed, 04 Dec 2019 17:34:46 +0000
Received: from lhreml704-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id CC18074A051245D850AE;
 Wed,  4 Dec 2019 17:19:12 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml704-cah.china.huawei.com (10.201.108.45) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 4 Dec 2019 17:19:12 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Wed, 4 Dec 2019
 17:19:12 +0000
To: Corey Minyard <minyard@acm.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <f6fc58e5-2133-9560-a5bd-5cadc107ac51@huawei.com>
Date: Wed, 4 Dec 2019 17:19:11 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml702-chm.china.huawei.com (10.201.108.51) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1icYXy-009MER-J7
Subject: [Openipmi-developer] Suspicious RCU usage in ipmi code
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
Cc: openipmi-developer@lists.sourceforge.net,
 Anders Roxell <anders.roxell@linaro.org>, paulmck@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

I'm booting an allmodconfig kernel on my arm64 system from recent Linus' 
master branch, and I see this:

[  188.241001][    T1] IPMI message handler: version 39.2
[  188.247331][    T1] ipmi device interface
[  188.256271][    T1]
[  188.258541][    T1] =============================
[  188.263388][    T1] WARNING: suspicious RCU usage
[  188.268236][    T1] 5.4.0+ #1416 Not tainted
[  188.272645][    T1] -----------------------------
[  188.277496][    T1] drivers/char/ipmi/ipmi_msghandler.c:744 RCU-list 
traversed in non-reader section!!
[  188.286971][    T1]
[  188.286971][    T1] other info that might help us debug this:
[  188.286971][    T1]
[  188.297235][    T1]
[  188.297235][    T1] rcu_scheduler_active = 2, debug_locks = 1
[  188.305314][    T1] 2 locks held by swapper/0/1:
[  188.310072][    T1]  #0: ffffffd0149687f0 (smi_watchers_mutex){+.+.}, 
at: ipmi_smi_watcher_register+0x5c/0x248
[  188.320295][    T1]  #1: ffffffd016c9aff8 
(&ipmi_interfaces_srcu){....}, at: ipmi_smi_watcher_register+0xa8/0x248
[  188.330771][    T1]
[  188.330771][    T1] stack backtrace:
[  188.336671][    T1] CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.4.0+ 
#1416
[  188.343604][    T1] Hardware name: Huawei Taishan 2280 /D05, BIOS 
Hisilicon D05 IT21 Nemo 2.0 RC0 04/18/2018
[  188.353506][    T1] Call trace:
[  188.356688][    T1]  dump_backtrace+0x0/0x3a0
[  188.361089][    T1]  show_stack+0x28/0x38
[  188.365142][    T1]  dump_stack+0x1ac/0x23c
[  188.369371][    T1]  lockdep_rcu_suspicious+0x100/0x118
[  188.374646][    T1]  ipmi_smi_watcher_register+0x134/0x248
[  188.380185][    T1]  init_ipmi_devintf+0xec/0x140
[  188.384936][    T1]  do_one_initcall+0x2f8/0x710
[  188.389600][    T1]  kernel_init_freeable+0x304/0x3dc
[  188.394701][    T1]  kernel_init+0x20/0x180
[  188.398928][    T1]  ret_from_fork+0x10/0x18
[  188.403333][    T1] ipmi_si: IPMI System Interface driver
[  188.411646][    T1] ipmi_si hisi-lpc-ipmi.5.auto: ipmi_platform: 
probing via ACPI
[  188.421958][    T1] ipmi_si hisi-lpc-ipmi.5.auto: IRQ index 0 not found
[  188.428737][    T1] ipmi_si hisi-lpc-ipmi.5.auto: ipmi_platform: [io 
0xffc0e3-0xffc0e7] regsize 1 spacing 1 irq 0
[  188.439386][    T1] ipmi_si: Adding ACPI-specified bt state machine
[  188.448341][    T1] kobject: 'wakeup' ((____ptrval____)): 
kobject_release, parent (____ptrval____) (delayed 1000)
[  188.458824][    T1] kobject: 'wakeup20' ((____ptrval____)): 
kobject_release, parent (____ptrval____) (delayed 250)
[  188.471778][    T1] ipmi_si hisi-lpc-ipmi.5.auto: ipmi_platform: 
probing via ACPI
[  188.481621][    T1] ipmi_si hisi-lpc-ipmi.5.auto: IRQ index 0 not found
[  188.488390][    T1] ipmi_si hisi-lpc-ipmi.5.auto: ipmi_platform: [io 
0xffc0e3-0xffc0e7] regsize 1 spacing 1 irq 0
[  188.498936][    T1] ipmi_si: Adding ACPI-specified bt state machine
[  188.507082][    T1] ipmi_si: Trying ACPI-specified bt state machine 
at i/o address 0xffc0e3, slave address 0x0, irq 0
[  188.524402][    T1] ipmi_si hisi-lpc-ipmi.5.auto: bt cap response too 
short: 3
[  188.531809][    T1] ipmi_si hisi-lpc-ipmi.5.auto: using default values
[  188.538483][    T1] ipmi_si hisi-lpc-ipmi.5.auto: req2rsp=5 secs 
retries=2
[  188.572794][    T1]
[  188.575080][    T1] =============================
[  188.579930][    T1] WARNING: suspicious RCU usage
[  188.584797][    T1] 5.4.0+ #1416 Not tainted
[  188.589206][    T1] -----------------------------
[  188.594055][    T1] drivers/char/ipmi/ipmi_msghandler.c:3453 RCU-list 
traversed in non-reader section!!
[  188.603617][    T1]
[  188.603617][    T1] other info that might help us debug this:
[  188.603617][    T1]
[  188.613884][    T1]
[  188.613884][    T1] rcu_scheduler_active = 2, debug_locks = 1
[  188.621945][    T1] 2 locks held by swapper/0/1:
[  188.626704][    T1]  #0: ffffffd01496c8f0 (smi_infos_lock){+.+.}, at: 
init_ipmi_si+0x78/0x24c
[  188.635436][    T1]  #1: ffffffd0149689b0 
(ipmi_interfaces_mutex){+.+.}, at: ipmi_add_smi+0x5e4/0xae0
[  188.644864][    T1]
[  188.644864][    T1] stack backtrace:
[  188.650765][    T1] CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.4.0+ 
#1416
[  188.657698][    T1] Hardware name: Huawei Taishan 2280 /D05, BIOS 
Hisilicon D05 IT21 Nemo 2.0 RC0 04/18/2018
[  188.667598][    T1] Call trace:
[  188.670777][    T1]  dump_backtrace+0x0/0x3a0
[  188.675178][    T1]  show_stack+0x28/0x38
[  188.679230][    T1]  dump_stack+0x1ac/0x23c
[  188.683458][    T1]  lockdep_rcu_suspicious+0x100/0x118
[  188.688726][    T1]  ipmi_add_smi+0x630/0xae0
[  188.688745][    T1]  try_smi_init+0xdbc/0xf18
[  188.688759][    T1]  init_ipmi_si+0x14c/0x24c
[  188.688773][    T1]  do_one_initcall+0x2f8/0x710
[  188.688787][    T1]  kernel_init_freeable+0x304/0x3dc
[  188.688802][    T1]  kernel_init+0x20/0x180
[  188.688815][    T1]  ret_from_fork+0x10/0x18
[  188.731333][    T1] ipmi_si hisi-lpc-ipmi.5.auto: IPMI message 
handler: Found new BMC (man_id: 0x0007db, prod_id: 0x0001, dev_id: 0x01)
[  188.935301][    T1] ipmi_si hisi-lpc-ipmi.5.auto: IPMI bt interface 
initialized
[  188.942797][    T1] ipmi_ssif: IPMI SSIF Interface driver

In the code we seem to be using srcu read lock instead of rcu read lock 
for list iteration protection, but that's a quick analysis. And there is 
also a mutex locked in ipmi_smi_watcher_register() [didn't check the 
other case], so I wonder if rcu list iterator variant is required at all.

Apologies if this has been reported previously. I see that Anders 
(cc'ed) has been reporting some of these sorts of issues.

Thanks,
John


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
