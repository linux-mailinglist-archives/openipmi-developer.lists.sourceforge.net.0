Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 419B252A884
	for <lists+openipmi-developer@lfdr.de>; Tue, 17 May 2022 18:47:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nr0Lh-0003s2-CB; Tue, 17 May 2022 16:47:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nr0Lf-0003rr-Tp
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 16:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SayoV/bDRPXgJ3Ch+E1XrP+3ZKBsDTlU6fUN8lp8tUA=; b=c6utFMuqy14dG/tpeE4rb8eMvN
 gfz7i9Gy5jxwChqxMHOYIq/HDk0pAGkIXXrCHHWhW0viMePBFJFp6yxedtbq3HPjeoR8MYIfHDB6b
 ryUy9xkvf9ZBHJ/Gp5ygU1zB+dvykgYqBFi+O5W10lOoR0nW6deUlJnN9qjwbTgc9kDs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SayoV/bDRPXgJ3Ch+E1XrP+3ZKBsDTlU6fUN8lp8tUA=; b=Z2a1RyhYT4mmqFM2otYgkFHdPB
 84mqSTSHetUGhhWWdGKHQSgd5HWrVOnuIVI2zx0VyoJQNcAH7AS746DoFBPEmA+Jom3x/c8opGj2t
 BeyZrffumVIaO/baMLL47Hn145pEEd3HphNTW5jmGPwt945GDgeVf+U6lVuQ8sResBZ0=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nr0Lc-004YJv-Ud
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 16:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SayoV/bDRPXgJ3Ch+E1XrP+3ZKBsDTlU6fUN8lp8tUA=; b=NFkpBbcNKXWz56FUYb1Bkzyxr7
 6pY/CyDxLh4gcyoAU547/3Tabh/NOqK7gz3NyBwq82xJqiEBF4takjF5Ea4MxM1+r5wku8pOVYUcB
 ywM/ZaJlNeBGlkQDKAAkvdKcd6hk5MAb9a5XNcjDCG3MlNSgk+v7vfXWUOesl/qG/NSZ4K/pjk0dM
 SubvLJBNURMO5WMoXdrxUQfhd0uSTHup7fDjOSHoKefOTjSKlQG/UGn8QEvdGVnYTtMgbwm4d3/K8
 B+J9kKyINLLhiDLqbwoDlrvd49iM915Hk5YhXi74qG93lapXX9eWm/gnnOawNxBPCH4bdsTvQIyr9
 Yagr/AQw==;
Received: from 200-161-159-120.dsl.telesp.net.br ([200.161.159.120]
 helo=[192.168.1.60]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nr0L8-008hJL-On; Tue, 17 May 2022 18:46:30 +0200
Message-ID: <599b72f6-76a4-8e6d-5432-56fb1ffd7e0b@igalia.com>
Date: Tue, 17 May 2022 13:45:51 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>, "Luck, Tony" <tony.luck@intel.com>,
 Dinh Nguyen <dinguyen@kernel.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-22-gpiccoli@igalia.com> <YoJgcC8c6LaKADZV@alley>
 <63a74b56-89ef-8d1f-d487-cdb986aab798@igalia.com>
 <bed66b9467254a5a8bafc1983dad643a@intel.com>
 <e895ce94-e6b9-caf6-e5d3-06bf0149445c@igalia.com> <YoOs9GJ5Ovq63u5Q@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoOs9GJ5Ovq63u5Q@alley>
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 17/05/2022 11:11,
 Petr Mladek wrote: > [...] >>> Then notifiers
 could make an informed choice on whether to deep dive to >>> get all the
 possible details (when there is no kdump) or just skim the h [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nr0Lc-004YJv-Ud
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
 Michael Ellerman <mpe@ellerman.id.au>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 Matt Turner <mattst88@gmail.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "luto@kernel.org" <luto@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 Alex Elder <elder@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "senozhatsky@chromium.org" <senozhatsky@chromium.org>,
 "d.hatayama@jp.fujitsu.com" <d.hatayama@jp.fujitsu.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sven Schnelle <svens@linux.ibm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Helge Deller <deller@gmx.de>, "vgoyal@redhat.com" <vgoyal@redhat.com>,
 "mhiramat@kernel.org" <mhiramat@kernel.org>, Vasily Gorbik <gor@linux.ibm.com>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 "john.ogness@linutronix.de" <john.ogness@linutronix.de>,
 "hidehiro.kawai.ez@hitachi.com" <hidehiro.kawai.ez@hitachi.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Chris Zankel <chris@zankel.net>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 James Morse <james.morse@arm.com>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>,
 "fabiomirmar@gmail.com" <fabiomirmar@gmail.com>,
 "halves@canonical.com" <halves@canonical.com>,
 "alejandro.j.jimenez@oracle.com" <alejandro.j.jimenez@oracle.com>, "Tang,
 Feng" <feng.tang@intel.com>, "will@kernel.org" <will@kernel.org>,
 "bhe@redhat.com" <bhe@redhat.com>, "corbet@lwn.net" <corbet@lwn.net>,
 Dexuan Cui <decui@microsoft.com>, "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "rcu@vger.kernel.org" <rcu@vger.kernel.org>, "bp@alien8.de" <bp@alien8.de>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "mikelley@microsoft.com" <mikelley@microsoft.com>,
 "H. Peter Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Richard Weinberger <richard@nod.at>, "x86@kernel.org" <x86@kernel.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "dyoung@redhat.com" <dyoung@redhat.com>,
 "paulmck@kernel.org" <paulmck@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "jgross@suse.com" <jgross@suse.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel@gpiccoli.net" <kernel@gpiccoli.net>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 "vkuznets@redhat.com" <vkuznets@redhat.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 17/05/2022 11:11, Petr Mladek wrote:
> [...]
>>> Then notifiers could make an informed choice on whether to deep dive to
>>> get all the possible details (when there is no kdump) or just skim the high
>>> level stuff (to maximize chance of getting a successful kdump).
>>>
>>> -Tony
>>
>> Good idea Tony! What if I wire a kexec_crash_loaded() in the notifier?
> 
> I like this idea.
> 
> One small problem is that kexec_crash_loaded() has valid result
> only under kexec_mutex. On the other hand, it should stay true
> once loaded so that the small race window should be innocent.
> 
>> With that, are you/Petr/Dinh OK in moving it for the info list?
> 
> Sounds good to me.
> 
> Best Regards,
> Petr

Perfect, I'll do that for V2 then =)

Tony / Dinh - can I just *skip* this notifier *if kdump* is set or else
we run the code as-is? Does that make sense to you?

I'll postpone it to run almost in the end of info list (last position is
for panic_print).

Thanks,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
