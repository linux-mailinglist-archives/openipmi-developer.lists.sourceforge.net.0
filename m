Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0416952D256
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 May 2022 14:21:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nrf9E-0003Z3-Os; Thu, 19 May 2022 12:20:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nrf9C-0003Yx-Mc
 for openipmi-developer@lists.sourceforge.net; Thu, 19 May 2022 12:20:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e6xrJm1a3ay+4weLnrCkh2SRSEeyZycIIB/twweqf9Y=; b=fC4uTghoAAwMfAkXA6MrrDsnXG
 38zKzeBUyo1TmgSgrcO509g6gJgs4B8W4CywQ+rilm621+yQ0IbtvO97g4K8GqUpBIpEkdbDbqpcz
 9jXvtKMMxC2+fcQWR9jRJHB2v7j36+Tw2WLGpC7kpf/RBWut7gMJytXZTesXijXIOdIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e6xrJm1a3ay+4weLnrCkh2SRSEeyZycIIB/twweqf9Y=; b=e7EO0oHU22c6OJaTG/LJWyn74O
 wc4IcsIUsdUDcgunBTTPuCVWgP10nPocSlWRF+lZYAWEa4hwp6mViX0wYSoker98E/aMdgV/fXRt6
 HFFYXl1O1eiuT/Orgm2CCIyOg65B5lS3yz5DYlB65VN6qNqkS46IiDycsk+fUhuzlP78=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nrf98-009Aep-9Y
 for openipmi-developer@lists.sourceforge.net; Thu, 19 May 2022 12:20:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e6xrJm1a3ay+4weLnrCkh2SRSEeyZycIIB/twweqf9Y=; b=BhOEtl3IEpq+ZutVgH7P2rHsfA
 mhGkC2PSuDrVyQ8IQfXtbB2pfD2fLPqKTP1L2vPLew3hLPbkforpZGHUalxvr86M8T2G/zNh0P/pw
 wi++cJ5XXfisCo4sQPAYOpaVMhBvNWB3svhNAgbQKxYFPy0Oeko+Z9jhUOVMogS4VQkCRHPLo2bnq
 jjqxb69zYzPORFRcZZlayXhHSqDz7B+6f3XjEVdBQ2ftzK2PDz+TwQa11JztdT1Ouzc0j+U1m1POY
 rbklHHuyIwI+fwGIyQbgwTEldlCv1PEui/a5Qzds7nWr2ZDdu+bcGybfUaDSvUQ/88wOr+qjGKQ2s
 3BFZ9Urg==;
Received: from 200-161-159-120.dsl.telesp.net.br ([200.161.159.120]
 helo=[192.168.1.60]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nrf8d-00BEVm-Gn; Thu, 19 May 2022 14:20:19 +0200
Message-ID: <edbaa4fa-561c-6f5e-f2ab-43ae68acaede@igalia.com>
Date: Thu, 19 May 2022 09:19:31 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Scott Branden <scott.branden@broadcom.com>, Petr Mladek
 <pmladek@suse.com>, Sebastian Reichel <sre@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Desmond yan <desmond.yan@broadcom.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com> <YoJZVZl/MH0KiE/J@alley>
 <ad082ce7-db50-13bb-3dbb-9b595dfa78be@igalia.com> <YoOpyW1+q+Z5as78@alley>
 <d72b9aab-675c-ac89-b73a-b1de4a0b722d@igalia.com>
 <81878a67-21f1-fee8-1add-f381bc8b05df@broadcom.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <81878a67-21f1-fee8-1add-f381bc8b05df@broadcom.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 18/05/2022 19:17, Scott Branden wrote: > Hi Guilherme,
 > > +Desmond > [...] >>>> I'm afraid it breaks kdump if this device is not
 reset beforehand - it's >>>> a doorbell write, so not high risk I t [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.7 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nrf98-009Aep-9Y
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
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, stern@rowland.harvard.edu,
 xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, Nicholas Piggin <npiggin@gmail.com>,
 luto@kernel.org, Mihai Carabas <mihai.carabas@oracle.com>, tglx@linutronix.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 Sven Schnelle <svens@linux.ibm.com>, akpm@linux-foundation.org,
 linux-hyperv@vger.kernel.org, dave.hansen@linux.intel.com,
 linux-s390@vger.kernel.org, Stephen Hemminger <sthemmin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, vgoyal@redhat.com, mhiramat@kernel.org,
 Andrea Parri <parri.andrea@gmail.com>, linux-xtensa@linux-xtensa.org,
 john.ogness@linutronix.de, Markus Mayer <mmayer@broadcom.com>,
 hidehiro.kawai.ez@hitachi.com, linux-arm-kernel@lists.infradead.org,
 kernel-dev@igalia.com, fabiomirmar@gmail.com, halves@canonical.com,
 alejandro.j.jimenez@oracle.com, feng.tang@intel.com,
 zhenwei pi <pizhenwei@bytedance.com>, will@kernel.org,
 Doug Berger <opendmb@gmail.com>, bhe@redhat.com, corbet@lwn.net,
 Dexuan Cui <decui@microsoft.com>, Evan Green <evgreen@chromium.org>,
 bcm-kernel-feedback-list@broadcom.com, Tianyu Lan <Tianyu.Lan@microsoft.com>,
 keescook@chromium.org, arnd@arndb.de, Haiyang Zhang <haiyangz@microsoft.com>,
 rostedt@goodmis.org, rcu@vger.kernel.org, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, peterz@infradead.org,
 linux-remoteproc@vger.kernel.org, mikelley@microsoft.com,
 sparclinux@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-leds@vger.kernel.org, x86@kernel.org,
 mingo@redhat.com, dyoung@redhat.com, paulmck@kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Shile Zhang <shile.zhang@linux.alibaba.com>,
 Wang ShaoBo <bobo.shaobowang@huawei.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 David Gow <davidgow@google.com>, linux-tegra@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, Hari Bathini <hbathini@linux.ibm.com>,
 linux-edac@vger.kernel.org, jgross@suse.com, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-mips@vger.kernel.org,
 Julius Werner <jwerner@chromium.org>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 18/05/2022 19:17, Scott Branden wrote:
> Hi Guilherme,
> 
> +Desmond
> [...] 
>>>> I'm afraid it breaks kdump if this device is not reset beforehand - it's
>>>> a doorbell write, so not high risk I think...
>>>>
>>>> But in case the not-reset device can be probed normally in kdump kernel,
>>>> then I'm fine in moving this to the reboot list! I don't have the HW to
>>>> test myself.
>>>
>>> Good question. Well, it if has to be called before kdump then
>>> even "hypervisor" list is a wrong place because is not always
>>> called before kdump.
>> [...]
> We register to the panic notifier so that we can kill the VK card ASAP
> to stop DMAing things over to the host side.  If it is not notified then
> memory may not be frozen when kdump is occurring.
> Notifying the card on panic is also needed to allow for any type of 
> reset to occur.
> 
> So, the only thing preventing moving the notifier later is the chance
> that memory is modified while kdump is occurring.  Or, if DMA is 
> disabled before kdump already then this wouldn't be an issue and the 
> notification to the card (to allow for clean resets) can be done later.

Hi Scott / Desmond, thanks for the detailed answer! Is this adapter
designed to run in x86 only or you have other architectures' use cases?

I'm not expert on that, but I guess whether DMA is "kept" or not depends
a bit if IOMMU is used. IIRC, there was a copy of the DMAR table in
kdump (at least for Intel IOMMU). Also, devices are not properly
quiesced on kdump IIUC, we don't call shutdown/reset handlers, they're
skip due to the crash nature - so there is a risk of devices doing bad
things in the new kernel.

With that said, and given this is a lightweight notifier that ideally
should run ASAP, I'd keep this one in the hypervisor list. We can
"adjust" the semantic of this list to include lightweight notifiers that
reset adapters.

With that said, Petr has a point - not always such list is going to be
called before kdump. So, that makes me think in another idea: what if we
have another list, but not on panic path, but instead in the custom
crash_shutdown()? Drivers could add callbacks there that must execute
before kexec/kdump, no matter what.

Let me know your thoughts Scott / Desmond / Petr and all interested parties.
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
