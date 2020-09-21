Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C3D286730
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC2-00083j-No; Wed, 07 Oct 2020 18:29:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wubo40@huawei.com>) id 1kKK7L-0003pK-J1
 for openipmi-developer@lists.sourceforge.net; Mon, 21 Sep 2020 11:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SQFO99rWcacODC7nIwHbVpaFVbZYSUNj0m0/PD9iq7Q=; b=SSpyO/0iTtyqJpAdY+ncysB3vg
 DZJqGB05Kfu2dsOCmwnqlerNUejk34zQ7GVsGWzfDG0VzGVDP0cLBDTXr0pb8rDtF5UgLs3FsW6xv
 nuZquVNAG4NQ1+W+jFZHvLADdG3Wo+9zgH9iojEMqerd+22ZTxAv3B73ukmOAbfIW6aQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SQFO99rWcacODC7nIwHbVpaFVbZYSUNj0m0/PD9iq7Q=; b=LNh/LbctjsiywNBCwxUFyujixs
 PWGiyWrzbWcPLJ0IhKwcmiMGglaBB/Xg7ObRLmKRz10eokH5pVj3Q+hPPmHr83ULOL00hOkE+iB0X
 TjHj3CeXOlA6F3Q8LlZANPmtaao+oLnww+kHZeZL2Fn/h24iTOvgKMjUv3Z7OF/yttnE=;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kKK7C-000BdN-Vm
 for openipmi-developer@lists.sourceforge.net; Mon, 21 Sep 2020 11:36:23 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0C87329B30D6C3AE099E;
 Mon, 21 Sep 2020 19:35:59 +0800 (CST)
Received: from [10.174.179.35] (10.174.179.35) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.487.0; Mon, 21 Sep 2020 19:35:51 +0800
To: <linux-edac@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <openipmi-developer@lists.sourceforge.net>
References: <1600339070-570840-1-git-send-email-wubo40@huawei.com>
From: Wu Bo <wubo40@huawei.com>
Message-ID: <2262c2ee-3272-987a-0bdb-a0ce55a1d43c@huawei.com>
Date: Mon, 21 Sep 2020 19:35:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <1600339070-570840-1-git-send-email-wubo40@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.174.179.35]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kKK7C-000BdN-Vm
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:28 +0000
Subject: Re: [Openipmi-developer] [RFC PATCH] mce: don't not enable IRQ in
 wait_for_panic()
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
Cc: tony.luck@intel.com, arnd@arndb.de, minyard@acm.org,
 gregkh@linuxfoundation.org, x86@kernel.org, liuzhiqiang26@huawei.com,
 linfeilong@huawei.com, andi@firstfloor.org, bp@alien8.de, hpa@zytor.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, mingo@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 2020/9/17 18:37, Wu Bo wrote:
> In my virtual machine (have 4 cpus), Use mce_inject to inject errors
> into the system. After mce-inject injects an uncorrectable error,
> there is a probability that the virtual machine is not reset immediately,
> but hangs for more than 3000 seconds, and appeared unable to
> handle kernel paging request.
> 
> The analysis reasons are as follows:
> 1) MCE appears on all CPUs, Currently all CPUs are in the NMI interrupt
>     context. cpu0 is the first to seize the opportunity to run panic
>     routines, and panic event should stop the other processors before
>     do ipmi flush_messages(). but cpu1, cpu2 and cpu3 has already
>     in NMI interrupt context, So the Second NMI interrupt(IPI)
>     will not be processed again by cpu1, cpu2 and cpu3.
>     At this time, cpu1,cpu2 and cpu3 did not stopped.
> 
> 2) cpu1, cpu2 and cpu3 are waitting for cpu0 to finish the panic process.
>     if a timeout waiting for other CPUs happened, do wait_for_panic(),
>     the irq is enabled in the wait_for_panic() function.
> 
> 3) ipmi IRQ occurs on the cpu3, and the cpu0 is doing the panic,
>     they have the opportunity to call the smi_event_handler()
>     function concurrently. the ipmi IRQ affects the panic process of cpu0.
> 
>    CPU0                                    CPU3
> 
>     |-nmi_handle do mce_panic               |-nmi_handle do_machine_check
>     |                                       |
>     |-panic()                               |-wait_for_panic()
>     |                                       |
>     |-stop other cpus ---- NMI ------> (Ignore, already in nmi interrupt)
>     |                                       |
>     |-notifier call(ipmi panic_event)       |<-ipmi IRQ occurs
>     |                                       |
>    \|/                                     \|/
> do smi_event_handler()             do smi_event_handler()
> 
> My understanding is that panic() runs with only one operational CPU
> in the system, other CPUs should be stopped, if other CPUs does not stop,
> at least IRQ interrupts should be disabled. The x86 architecture,
> disable IRQ interrupt will not affect IPI when do mce panic,
> because IPI is notified through NMI interrupt. If my analysis
> is not right, please correct me, thanks.
> 
> Steps to reproduce (Have a certain probability):
> 1. # vim /tmp/uncorrected
> CPU 1 BANK 4
> STATUS uncorrected 0xc0
> MCGSTATUS  EIPV MCIP
> ADDR 0x1234
> RIP 0xdeadbabe
> RAISINGCPU 0
> MCGCAP SER CMCI TES 0x6
>   
> 2. # modprobe mce_inject
> 3. # cd /tmp
> 4. # mce-inject uncorrected
> 
Hi,

I tested the 5.9-rc5 version and found that the problem still exists. Is 
there a good solution ?

Best regards,
Wu Bo



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
