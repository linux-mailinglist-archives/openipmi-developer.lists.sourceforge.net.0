Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9CF515354
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 20:05:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkV05-0005lL-BV; Fri, 29 Apr 2022 18:05:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nkV04-0005l8-2s
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 18:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CfgJSltNTETfm69VgWZeJ1xxMOJuVJJeVDaV1//hOM4=; b=fX7ZhuyBgvkkbHpr3nKXyaOZXH
 uVrv04GG+X7LVAwQLHhtgjk2Nd2Ai1haeuhqWScegKRNWN6LHnFprbX+stXo1JZZOZwCoG8gWgcRb
 MyZ6PG6iQZ/WJYCfYBXhK6X8voCKi5YCWEhefsZVABX8F2W3Dhxs4DNExvZT7C2LIsPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CfgJSltNTETfm69VgWZeJ1xxMOJuVJJeVDaV1//hOM4=; b=AiBnJvH1N1n1s4dAnJWfqVUEew
 qpz48INf2vI0tYGKlJXefABv9qC6qxv9tSA/0Y1NO1palBDZlt+d+7buFQPF8x6isiCDlifxYWrTn
 jbbzjxZsGOrf+nk/Aksnlsj74PBVjyUdo7xgImWxee6y3DfDhtqUiyBnhifNYKWv5m28=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkV01-00E2iy-EH
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 18:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CfgJSltNTETfm69VgWZeJ1xxMOJuVJJeVDaV1//hOM4=; b=slyIgXmeUq77MnrSUr5lBtJx9z
 m86cp15BT6gKICc3jCqWbY2B0tpa99u5bAed7DYYXL/rMf6XHJRMLSIrTGUcJCHpVtGl/+APLcmrh
 RXQpa9HZXWVydxhVU95+hp+ZiaA0uHFZXPx5zEc5qg8trUY5PT1GKrapnos8zeTpFOAoQJEAx9vvn
 efpqnWK3jhpJIbXy7DD12LOMiGnr6GupNgQCAiVUmjcrI2J6NMnifvEjcuVQUbIlOFxyQL8HlLyj5
 ydadfwYuZkTNnyuPFseli5ffoVSkxD0MS5bvuilrJblEdywU2jKWaFEjPPnVXRJf3ScYrp3fr3KhT
 ij4JQKSA==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nkUzF-0006RF-Du; Fri, 29 Apr 2022 20:05:01 +0200
Message-ID: <0147d038-571b-0802-c210-ccd4d52cd5dd@igalia.com>
Date: Fri, 29 Apr 2022 15:04:22 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: "Michael Kelley (LINUX)" <mikelley@microsoft.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "bhe@redhat.com" <bhe@redhat.com>, "pmladek@suse.com" <pmladek@suse.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com>
 <PH0PR21MB30256260CCF4CAB713BBB11ED7FC9@PH0PR21MB3025.namprd21.prod.outlook.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <PH0PR21MB30256260CCF4CAB713BBB11ED7FC9@PH0PR21MB3025.namprd21.prod.outlook.com>
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 29/04/2022 14:30, Michael Kelley (LINUX) wrote: > From:
 Guilherme G. Piccoli <gpiccoli@igalia.com> Sent: Wednesday, April 27, 2022
 3:49 PM >> [...] >> >> @@ -2843,7 +2843,7 @@ static void __exit vm [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nkV01-00E2iy-EH
Subject: Re: [Openipmi-developer] [PATCH 19/30] panic: Add the panic
 hypervisor notifier list
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
 Paul Mackerras <paulus@samba.org>, Justin Chen <justinpopo6@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Alexander Gordeev <agordeev@linux.ibm.com>,
 KY Srinivasan <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 Nicholas Piggin <npiggin@gmail.com>, "luto@kernel.org" <luto@kernel.org>,
 Mihai Carabas <mihai.carabas@oracle.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "senozhatsky@chromium.org" <senozhatsky@chromium.org>,
 "d.hatayama@jp.fujitsu.com" <d.hatayama@jp.fujitsu.com>,
 Sven Schnelle <svens@linux.ibm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "john.ogness@linutronix.de" <john.ogness@linutronix.de>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>,
 "mhiramat@kernel.org" <mhiramat@kernel.org>,
 Andrea Parri <parri.andrea@gmail.com>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 Vasily Gorbik <gor@linux.ibm.com>, Scott Branden <scott.branden@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Markus Mayer <mmayer@broadcom.com>,
 "hidehiro.kawai.ez@hitachi.com" <hidehiro.kawai.ez@hitachi.com>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>,
 "fabiomirmar@gmail.com" <fabiomirmar@gmail.com>,
 "halves@canonical.com" <halves@canonical.com>,
 "alejandro.j.jimenez@oracle.com" <alejandro.j.jimenez@oracle.com>,
 "feng.tang@intel.com" <feng.tang@intel.com>,
 zhenwei pi <pizhenwei@bytedance.com>, "will@kernel.org" <will@kernel.org>,
 Doug Berger <opendmb@gmail.com>, "corbet@lwn.net" <corbet@lwn.net>,
 Dexuan Cui <decui@microsoft.com>, Evan Green <evgreen@chromium.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, Tianyu Lan <Tianyu.Lan@microsoft.com>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "rcu@vger.kernel.org" <rcu@vger.kernel.org>, "bp@alien8.de" <bp@alien8.de>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "dyoung@redhat.com" <dyoung@redhat.com>,
 "paulmck@kernel.org" <paulmck@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Shile Zhang <shile.zhang@linux.alibaba.com>,
 Wang ShaoBo <bobo.shaobowang@huawei.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 David Gow <davidgow@google.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Hari Bathini <hbathini@linux.ibm.com>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "jgross@suse.com" <jgross@suse.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel@gpiccoli.net" <kernel@gpiccoli.net>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Julius Werner <jwerner@chromium.org>, vkuznets <vkuznets@redhat.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 29/04/2022 14:30, Michael Kelley (LINUX) wrote:
> From: Guilherme G. Piccoli <gpiccoli@igalia.com> Sent: Wednesday, April 27, 2022 3:49 PM
>> [...]
>>
>> @@ -2843,7 +2843,7 @@ static void __exit vmbus_exit(void)
>>  	if (ms_hyperv.misc_features & HV_FEATURE_GUEST_CRASH_MSR_AVAILABLE) {
>>  		kmsg_dump_unregister(&hv_kmsg_dumper);
>>  		unregister_die_notifier(&hyperv_die_report_block);
>> -		atomic_notifier_chain_unregister(&panic_notifier_list,
>> +		atomic_notifier_chain_unregister(&panic_hypervisor_list,
>>  						&hyperv_panic_report_block);
>>  	}
>>
> 
> Using the hypervisor_list here produces a bit of a mismatch.  In many cases
> this notifier will do nothing, and will defer to the kmsg_dump() mechanism
> to notify the hypervisor about the panic.   Running the kmsg_dump()
> mechanism is linked to the info_list, so I'm thinking the Hyper-V panic report
> notifier should be on the info_list as well.  That way the reporting behavior
> is triggered at the same point in the panic path regardless of which
> reporting mechanism is used.
> 

Hi Michael, thanks for your feedback! I agree that your idea could work,
but...there is one downside: imagine the kmsg_dump() approach is not set
in some Hyper-V guest, then we would rely in the regular notification
mechanism [hv_die_panic_notify_crash()], right?
But...you want then to run this notifier in the informational list,
which...won't execute *by default* before kdump if no kmsg_dump() is
set. So, this logic is convoluted when you mix it with the default level
concept + kdump.

May I suggest something? If possible, take a run with this patch set +
DEBUG_NOTIFIER=y, in *both* cases (with and without the kmsg_dump()
set). I did that and they run almost at the same time...I've checked the
notifiers called, it's like almost nothing runs in-between.

I feel the panic notification mechanism does really fit with a
hypervisor list, it's a good match with the nature of the list, which
aims at informing the panic notification to the hypervisor/FW.
Of course we can modify it if you prefer...but please take into account
the kdump case and how it complicates the logic.

Let me know your considerations, in case you can experiment with the
patch set as-is.
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
