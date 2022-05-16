Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED64552897D
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 18:07:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqdFe-0001Bn-G3; Mon, 16 May 2022 16:07:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqdFb-0001Bg-Ao
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:07:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hkxxY/QtEmLaEz91h3ZbibgaO5mIVJpTDxNjCMnCCRs=; b=Ng3LSJQqi5K22hn4IJoZPfLIUw
 bEIqIX8iriCT2K/Rt10V/A+SBxoF5vF7xF7L2hiutoMzsKoJdr3rPjmW1ozNKWm6sRaTwq7TgbzfX
 MLZdoPyZjrvmY5h+2NXtB1zVe3eMw47zF6YDszbqlMZ54GojVgyWWmpa9nqaiwVQK9B0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hkxxY/QtEmLaEz91h3ZbibgaO5mIVJpTDxNjCMnCCRs=; b=iVCFhGlax6AmuMSDClhKfEwt5s
 H3MeP6LS3wSX2zabhMpV7hz0gIqEwTdZgYGuQ63sYXrjSsERMWHdghnAetcEGGubEvQNBtiIssq5O
 gzBy3hpCNfKlhBFt/EFVRGDCrwPR53ObELsa2PYOjBcDloQVPZow3iacLTZy/MCaEFY8=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqdFV-0003VQ-HJ
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:07:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hkxxY/QtEmLaEz91h3ZbibgaO5mIVJpTDxNjCMnCCRs=; b=QJKb57mFKwMFscTO5WFY4RSj23
 KQ6n8H9l2g2SttLbeQWPGo2evZPJbMnkbERgI1GrlJbCyaovBQ7YNgsYgYWZV4AUB43bBYpAdAI4t
 tSUTgJhvOvNj6CgwWpUnZT0VvP1nPFnrhSTYeteC8TI+m63sh71ROWTeeLMsXDtJw57P/+L4voDEA
 fAA2sLoZLSjWU8escrCVSpKI49cJB+42jd6GXOMXbMkFbQNvfMy7UNTlghfu62nr5uAdPO/Hn/wFd
 nMAbmXIqsuv6JnFGW2A+NmrSU+Aj1YnRvsm6Le3RHEDyDM6bMieEJqNdqhsYzjUU2qgiLiCJOh07u
 ze5flEbQ==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqdEm-006s2D-Fy; Mon, 16 May 2022 18:06:24 +0200
Message-ID: <63a74b56-89ef-8d1f-d487-cdb986aab798@igalia.com>
Date: Mon, 16 May 2022 13:05:44 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>, Tony Luck <tony.luck@intel.com>,
 Dinh Nguyen <dinguyen@kernel.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-22-gpiccoli@igalia.com> <YoJgcC8c6LaKADZV@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoJgcC8c6LaKADZV@alley>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks again for the review! Comments inline below: On
 16/05/2022
 11:33, Petr Mladek wrote: > [...] >> --- a/drivers/edac/altera_edac.c >>
 +++ b/drivers/edac/altera_edac.c >> @@ -2163, 7 +2162,
 7 @@ static int altr_edac_a10_probe(struct
 platform_device * [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nqdFV-0003VQ-HJ
Subject: Re: [Openipmi-developer] [PATCH 21/30] panic: Introduce the panic
 pre-reboot notifier list
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Pavel Machek <pavel@ucw.cz>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, stern@rowland.harvard.edu,
 xen-devel@lists.xenproject.org, Matt Turner <mattst88@gmail.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, luto@kernel.org, tglx@linutronix.de,
 Alex Elder <elder@kernel.org>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, senozhatsky@chromium.org,
 d.hatayama@jp.fujitsu.com, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sven Schnelle <svens@linux.ibm.com>, akpm@linux-foundation.org,
 linux-hyperv@vger.kernel.org, dave.hansen@linux.intel.com,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, linux-s390@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Helge Deller <deller@gmx.de>, vgoyal@redhat.com, mhiramat@kernel.org,
 Vasily Gorbik <gor@linux.ibm.com>, linux-xtensa@linux-xtensa.org,
 john.ogness@linutronix.de, hidehiro.kawai.ez@hitachi.com,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Chris Zankel <chris@zankel.net>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 James Morse <james.morse@arm.com>, kernel-dev@igalia.com,
 fabiomirmar@gmail.com, halves@canonical.com, alejandro.j.jimenez@oracle.com,
 feng.tang@intel.com, will@kernel.org, bhe@redhat.com, corbet@lwn.net,
 Dexuan Cui <decui@microsoft.com>, bcm-kernel-feedback-list@broadcom.com,
 keescook@chromium.org, arnd@arndb.de, Haiyang Zhang <haiyangz@microsoft.com>,
 rostedt@goodmis.org, rcu@vger.kernel.org, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, peterz@infradead.org,
 linux-remoteproc@vger.kernel.org, mikelley@microsoft.com,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-leds@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org, mingo@redhat.com,
 dyoung@redhat.com, paulmck@kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-tegra@vger.kernel.org, andriy.shevchenko@linux.intel.com,
 Johannes Berg <johannes@sipsolutions.net>, linux-edac@vger.kernel.org,
 jgross@suse.com, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-mips@vger.kernel.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Thanks again for the review! Comments inline below:


On 16/05/2022 11:33, Petr Mladek wrote:
> [...]
>> --- a/drivers/edac/altera_edac.c
>> +++ b/drivers/edac/altera_edac.c
>> @@ -2163,7 +2162,7 @@ static int altr_edac_a10_probe(struct platform_device *pdev)
>>  		int dberror, err_addr;
>>  
>>  		edac->panic_notifier.notifier_call = s10_edac_dberr_handler;
>> -		atomic_notifier_chain_register(&panic_notifier_list,
>> +		atomic_notifier_chain_register(&panic_pre_reboot_list,
> 
> My understanding is that this notifier first prints info about ECC
> errors and then triggers reboot. It might make sense to split it
> into two notifiers.

I disagree here - looping the maintainers for comments (CCing Dinh /
Tony). BTW, sorry for not having you on CC already Dinh, it was my mistake.

So, my reasoning here is: this notifier should fit the info list,
definitely! But...it's very high risk for kdump. It deep dives into the
regmap API (there are locks in such code) plus there is an (MM)IO write
to the device and an ARM firmware call. So, despite the nature of this
notifier _fits the informational list_, the _code is risky_ so we should
avoid running it before a kdump.

Now, we indeed have a chicken/egg problem: want to avoid it before
kdump, BUT in case kdump is not set, kmsg_dump() (and console flushing,
after your suggestion Petr) will run before it and not save collected
information from EDAC PoV.

My idea: I could call a second kmsg_dump() or at least a panic console
flush for within such notifier. Let me know what you think Petr (also
Dinh / Tony and all interested parties).


> [...] 
>> --- a/drivers/leds/trigger/ledtrig-panic.c
>> +++ b/drivers/leds/trigger/ledtrig-panic.c
>> @@ -64,7 +63,7 @@ static long led_panic_blink(int state)
>>  
>>  static int __init ledtrig_panic_init(void)
>>  {
>> -	atomic_notifier_chain_register(&panic_notifier_list,
>> +	atomic_notifier_chain_register(&panic_pre_reboot_list,
>>  				       &led_trigger_panic_nb);
> 
> Blinking => should go to the last "post_reboot/loop" list.
> [...] 
>> --- a/drivers/misc/ibmasm/heartbeat.c
>> +++ b/drivers/misc/ibmasm/heartbeat.c
>> @@ -32,20 +31,23 @@ static int suspend_heartbeats = 0;
>>  static int panic_happened(struct notifier_block *n, unsigned long val, void *v)
>>  {
>>  	suspend_heartbeats = 1;
>> -	return 0;
>> +	return NOTIFY_DONE;
>>  }
>>  
>> -static struct notifier_block panic_notifier = { panic_happened, NULL, 1 };
>> +static struct notifier_block panic_notifier = {
>> +	.notifier_call = panic_happened,
>> +};
>>  
>>  void ibmasm_register_panic_notifier(void)
>>  {
>> -	atomic_notifier_chain_register(&panic_notifier_list, &panic_notifier);
>> +	atomic_notifier_chain_register(&panic_pre_reboot_list,
>> +					&panic_notifier);
> 
> Same here. Blinking => should go to the last "post_reboot/loop" list.

Ack on both.

IBMasm is not blinking IIUC, but still fits properly the loop list. This
notifier would make a heartbeat mechanism stop, and once it's stopped,
service processor is allowed to reboot - that's my understanding.


Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
